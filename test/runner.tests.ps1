<#
.SYNOPSIS
Run Pester and export results in NUnitXml format
.DESCRIPTION
Run Pester and export results in NUnitXml format
.EXAMPLE
.\runnner.tests.ps1
#>
import-module -name "Pester"
[CmdLetBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string]$TenantId,
    [Parameter(Mandatory = $true)]
    [string]$SubscriptionId,
    [Parameter(Mandatory = $true)]
    [string]$ClientId,
    [Parameter(Mandatory = $true)]
    [string]$ClientSecret,
    [Parameter(Mandatory = $true)]
    [string]$Environment
)

$TestFilePath = "$PSScriptRoot/mgs.tests.ps1";
$OutputDirectory = ".";
$TestParameters = @{
    TenantId       = $TenantId
    SubscriptionId = $SubscriptionId
    ClientId       = $ClientId
    ClientSecret   = $ClientSecret
    Environment    = $Environment
};

$testFile = $(Split-Path $TestFilePath -leaf).Replace(".ps1", "");
$outputFile = "$OutputDirectory\$testFile-results.xml"
$script = @{ Path = $TestFilePath; Parameters = $TestParameters }
Invoke-Pester -Script $script -OutputFile $outputFile -OutputFormat NUnitXml