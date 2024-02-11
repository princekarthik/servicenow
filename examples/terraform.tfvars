name="ca-policy1"
project_id = "principal-rhino-413816"
default_rules =[
    {
    action   = "allow"
    priority = "2147483647"
    versioned_expr = "SRC_IPS_V1"
    src_ip_ranges = ["*"]  
    description = "default rule"
    },
    {
    action   = "deny(403)"
    priority = "1002"
    versioned_expr = "SRC_IPS_V1"
    src_ip_ranges = ["4.5.6.0/24"]
    description = "Deny access to IPs in 4.5.6.0/24"
    }    
]

cel_rules = [  
    {
    action   = "allow"
    priority = "1001"
    expression = "origin.region_code == 'US' && inIpRange(origin.ip, '1.2.3.0/24')" 
    description = "requests from 1.2.3.0/24 (such as your alpha testers) in the US region match the expression"
    } 
]
members                  = [] //add the members