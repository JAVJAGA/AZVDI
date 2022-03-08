<#
.SYNOPSIS
Check the try environment deployment
.DESCRIPTION
Check that try environemnt have a resource group and some rbac permissions
.EXAMPLE
./tryenvironment.tests.ps1
#>
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


$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$dirFixtures = $here + "/fixtures"
$tfvarfile = "../terraform-" + $Environment + ".tfvars"

$authVars = "-var tenant_id=$TenantId -var subscription_id=$SubscriptionId -var client_id=$ClientId -var client_secret=$ClientSecret"

Describe -Name 'Unit Tests' -Fixture {
    $currentvars = $null
    $Script:vars = $null
    BeforeEach {
        If ($vars -ne $currentvars) {
            Write-Host "`t Initializing..."
            $command = "terraform init $dirFixtures"
            Invoke-Expression $command

            Write-Host "`t Validating..."
            $planfile = "ut.tfplan"
            $command = "terraform validate $authVars -var-file=`"$tfvarfile`" $dirFixtures"
            Invoke-Expression $command
            $lastexitcode | Should Be 0

            Write-Host "`t Creating test plan..."
            $command = "terraform plan -input=false $authVars -var-file=`"$tfvarfile`" -out=`"$planfile`" $dirFixtures"
            Invoke-Expression $command
            $lastexitcode | Should Be 0      

            Write-Host "`t Getting test plan info..."
            terraform show -json $planfile | Out-File "ut.tfplan.json"
            $tfplan = (terraform show -json $planfile | ConvertFrom-Json)
            
            $Script:resources = ($tfplan.planned_values.root_module.child_modules | Where-Object { $_.address -eq "module.main" }).child_modules
            $Script:resources_level1 = $resources | Where-Object { $_.address -like "*level1*" }
            $Script:resources_level2 = $resources | Where-Object { $_.address -like "*level2*" }
            $Script:resources_level3 = $resources | Where-Object { $_.address -like "*level3*" }
            $Script:resources_level4 = $resources | Where-Object { $_.address -like "*level4*" }
            $Script:resources_level5 = $resources | Where-Object { $_.address -like "*level5*" }
                        
            $currentvars = $vars
        }
    }

    Context -Name 'Management-Groups' {
        $vars = @{
            environment = $Environment
        }
        It -name 'Checks Global Plan' {    
            $resources.Count | Should Be 85
            $resources_level1.Count | Should Be 1
            $resources_level2.Count | Should Be 11
            $resources_level3.Count | Should Be 13
            $resources_level4.Count | Should Be 51
            $resources_level5.Count | Should Be 9
        }
        It -name 'Checks Level1 Naming' {    
            for ($index = 0; $index -lt $resources_level1.Count; $index++) {
                if ($vars.environment -eq 'live') {         
                    $resources_level1[$index].resources.values.name | Should BeLike "fn*"
                }
                else {
                    $resources_level1[$index].resources.values.name | Should BeLike "lb*"
                }
            }
        }
        It -name 'Checks Level2 Naming' {    
            for ($index = 0; $index -lt $resources_level2.Count; $index++) {
                if ($vars.environment -eq 'live') {         
                    $resources_level2[$index].resources.values.name | Should BeLike "fn*"
                }
                else {
                    $resources_level2[$index].resources.values.name | Should BeLike "lb*"
                }
            }
        }
        It -name 'Checks Level3 Naming' {    
            for ($index = 0; $index -lt $resources_level3.Count; $index++) {
                if ($vars.environment -eq 'live') {         
                    $resources_level3[$index].resources.values.name | Should BeLike "fn*"
                }
                else {
                    $resources_level3[$index].resources.values.name | Should BeLike "lb*"
                }
            }
        }
        It -name 'Checks Level4 Naming' {    
            for ($index = 0; $index -lt $resources_level4.Count; $index++) {
                if ($vars.environment -eq 'live') {         
                    $resources_level4[$index].resources.values.name | Should BeLike "fn*"
                }
                else {
                    $resources_level4[$index].resources.values.name | Should BeLike "lb*"
                }
            }
        }
        It -name 'Checks Level5 Naming' {    
            for ($index = 0; $index -lt $resources_level5.Count; $index++) {
                if ($vars.environment -eq 'live') {         
                    $resources_level5[$index].resources.values.name | Should BeLike "fn*"
                }
                else {
                    $resources_level5[$index].resources.values.name | Should BeLike "lb*"
                }
            }
        }
    }
}