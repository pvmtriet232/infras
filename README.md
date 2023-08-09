# AWS architecture 
```mermaid
flowchart TD
    C{root} --> output --> test
    
    C -->|module| N[Networking]
    C -->|module| D[(Database)]


    N --dir--> vpc-internet
    subgraph vpc-internet
    aug[AutoScaling]
    aug --> iip[iip]
    aug --> alb[ALB]
    sg[SG]
    end 

    N --dir--> vpc-intranet
    subgraph vpc-intranet
    aug2[AutoScaling]
    aug2 --> iip2[iip]
    aug2 --> alb2[ALB]
    sg2[SG]
    end
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


