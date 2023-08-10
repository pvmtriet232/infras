# terraform modules architecture 
```mermaid
flowchart TD
    C{root} 
    
    C -->|module| N[Networking]
    C -->|module| D[(Database)]
    C -->|module| A[ASGs]


    N --> vpcs
    N --> SG[SG]
    N --> R[Route53]

    A --- iip[IIP]
    A --- alb[ALBs]
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


