# AWS architecture 
```mermaid
flowchart TD
    C{root}
    
    C -->|module| N[Networking]
    C -->|module| D[(Database)]
    C -->|module| A[AutoScaling]

    N -->G[vpc-internet]-->I[SG]
    N -->T[vpc-intranet]-->O[SG] 
    
    A -->iip[iip]
    A -->alb[ALB]
```
## step 1: init terraform cloud
#### **`terraform.tf`**
```
terraform {
  cloud {
    organization = "pvmtriet"
    # hostname = "app.terraform.io"

    workspaces {
      name = "infras"
    }
  }
}
```
## step 2: 
- add 


