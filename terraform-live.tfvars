level1_management_groups = {
  "fn" = {
    display_name               = "foundational"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/909b2d7c-7862-4251-9d9a-31e38b4062b1"
    subscription_ids           = []
  }
}
level2_management_groups = {
  "fn.az00" = {
    display_name               = "gsoc"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az01" = {
    display_name               = "nextgen"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az02" = {
    display_name               = "legacy"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az03" = {
    display_name               = "cloudnative"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az04" = {
    display_name               = "eval"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az05" = {
    display_name               = "try"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az06" = {
    display_name               = "quarantine"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az07" = {
    display_name               = "localdatacenter"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az08" = {
    display_name               = "recyclebin"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az09" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  },
  "fn.az10" = {
    display_name               = "workplace"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn"
    subscription_ids           = []
  }
}
level3_management_groups = {
  "fn.az01.core" = {
    display_name               = "core"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01"
    subscription_ids           = []
  },
  "fn.az01.cons" = {
    display_name               = "consumer"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01"
    subscription_ids           = []
  },
  "fn.az01.prov" = {
    display_name               = "provider"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01"
    subscription_ids           = []
  },
  "fn.az02.core" = {
    display_name               = "core"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02"
    subscription_ids           = []
  },
  "fn.az02.cons" = {
    display_name               = "consumer"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02"
    subscription_ids           = []
  },
  "fn.az02.prov" = {
    display_name               = "provider"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02"
    subscription_ids           = []
  },
  "fn.az03.core" = {
    display_name               = "core"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03"
    subscription_ids           = []
  },
  "fn.az03.cons" = {
    display_name               = "consumer"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03"
    subscription_ids           = []
  },
  "fn.az03.prov" = {
    display_name               = "provider"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03"
    subscription_ids           = []
  },
  "fn.az07.core" = {
    display_name               = "core"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07"
    subscription_ids           = []
  },
  "fn.az07.cons" = {
    display_name               = "consumer"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07"
    subscription_ids           = []
  },
  "fn.az10.core" = {
    display_name               = "core"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10"
    subscription_ids           = []
  },
  "fn.az10.prov" = {
    display_name               = "provider"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10"
    subscription_ids           = []
  }
}
level4_management_groups = {
  "fn.az00.cpriv" = {
    display_name               = "common-priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az00"
    subscription_ids           = []
  },
  "fn.az00.clab" = {
    display_name               = "common-lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az00"
    subscription_ids           = []
  },
  "fn.az00.clive" = {
    display_name               = "common-live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az00"
    subscription_ids           = []
  },
  "fn.az01.core.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.core"
    subscription_ids           = []
  },
  "fn.az01.core.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.core"
    subscription_ids           = []
  },
  "fn.az01.core.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.core"
    subscription_ids           = []
  },
  "fn.az01.core.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.core"
    subscription_ids           = []
  },
  "fn.az01.prov.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.prov"
    subscription_ids           = []
  },
  "fn.az01.prov.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.prov"
    subscription_ids           = []
  },
  "fn.az01.prov.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.prov"
    subscription_ids           = []
  },
  "fn.az01.prov.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.prov"
    subscription_ids           = []
  },
  "fn.az01.cons.int" = {
    display_name               = "int"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.cons"
    subscription_ids           = []
  },
  "fn.az01.cons.pre" = {
    display_name               = "pre"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.cons"
    subscription_ids           = []
  },
  "fn.az01.cons.pro" = {
    display_name               = "pro"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az01.cons"
    subscription_ids           = []
  },
  "fn.az02.core.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.core"
    subscription_ids           = []
  },
  "fn.az02.core.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.core"
    subscription_ids           = []
  },
  "fn.az02.core.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.core"
    subscription_ids           = []
  },
  "fn.az02.core.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.core"
    subscription_ids           = []
  },
  "fn.az02.prov.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.prov"
    subscription_ids           = []
  },
  "fn.az02.prov.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.prov"
    subscription_ids           = []
  },
  "fn.az02.prov.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.prov"
    subscription_ids           = []
  },
  "fn.az02.prov.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.prov"
    subscription_ids           = []
  },
  "fn.az02.cons.int" = {
    display_name               = "int"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.cons"
    subscription_ids           = []
  },
  "fn.az02.cons.pre" = {
    display_name               = "pre"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.cons"
    subscription_ids           = []
  },
  "fn.az02.cons.pro" = {
    display_name               = "pro"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az02.cons"
    subscription_ids           = []
  },
  "fn.az07.core.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.core"
    subscription_ids           = []
  },
  "fn.az07.core.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.core"
    subscription_ids           = []
  },
  "fn.az07.core.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.core"
    subscription_ids           = []
  },
  "fn.az07.core.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.core"
    subscription_ids           = []
  },
  "fn.az07.cons.mx" = {
    display_name               = "mexico"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons"
    subscription_ids           = []
  },
  "fn.az07.cons.co" = {
    display_name               = "colombia"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons"
    subscription_ids           = []
  },
  "fn.az07.cons.es" = {
    display_name               = "spain"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons"
    subscription_ids           = []
  },
  "fn.az03.core.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.core"
    subscription_ids           = []
  },
  "fn.az03.core.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.core"
    subscription_ids           = []
  },
  "fn.az03.core.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.core"
    subscription_ids           = []
  },
  "fn.az03.core.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.core"
    subscription_ids           = []
  },
  "fn.az03.prov.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.prov"
    subscription_ids           = []
  },
  "fn.az03.prov.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.prov"
    subscription_ids           = []
  },
  "fn.az03.prov.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.prov"
    subscription_ids           = []
  },
  "fn.az03.prov.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.prov"
    subscription_ids           = []
  },
  "fn.az03.cons.int" = {
    display_name               = "int"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.cons"
    subscription_ids           = []
  },
  "fn.az03.cons.pre" = {
    display_name               = "pre"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.cons"
    subscription_ids           = []
  },
  "fn.az03.cons.pro" = {
    display_name               = "pro"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az03.cons"
    subscription_ids           = []
  },
  "fn.az10.core.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.core"
    subscription_ids           = []
  },
  "fn.az10.core.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.core"
    subscription_ids           = []
  },
  "fn.az10.core.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.core"
    subscription_ids           = []
  },
  "fn.az10.core.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.core"
    subscription_ids           = []
  },
  "fn.az10.prov.priv" = {
    display_name               = "priv"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.prov"
    subscription_ids           = []
  },
  "fn.az10.prov.lab" = {
    display_name               = "lab"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.prov"
    subscription_ids           = []
  },
  "fn.az10.prov.work" = {
    display_name               = "work"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.prov"
    subscription_ids           = []
  },
  "fn.az10.prov.live" = {
    display_name               = "live"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az10.prov"
    subscription_ids           = []
  }
}
level5_management_groups = {
  "fn.az07.cons.mx.int" = {
    display_name               = "int"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.mx"
    subscription_ids           = []
  },
  "fn.az07.cons.mx.pre" = {
    display_name               = "pre"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.mx"
    subscription_ids           = []
  },
  "fn.az07.cons.mx.pro" = {
    display_name               = "pro"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.mx"
    subscription_ids           = []
  },
  "fn.az07.cons.co.int" = {
    display_name               = "int"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.co"
    subscription_ids           = []
  },
  "fn.az07.cons.co.pre" = {
    display_name               = "pre"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.co"
    subscription_ids           = []
  },
  "fn.az07.cons.co.pro" = {
    display_name               = "pro"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.co"
    subscription_ids           = []
  },
  "fn.az07.cons.es.int" = {
    display_name               = "int"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.es"
    subscription_ids           = []
  },
  "fn.az07.cons.es.pre" = {
    display_name               = "pre"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.es"
    subscription_ids           = []
  },
  "fn.az07.cons.es.pro" = {
    display_name               = "pro"
    parent_management_group_id = "/providers/Microsoft.Management/managementGroups/fn.az07.cons.es"
    subscription_ids           = []
  }
}
