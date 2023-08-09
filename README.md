# AWS architecture 
```mermaid
flowchart TD
    B --> C{root}
    C -->|One| D[Database]
    C -->|Two| E[Net working]
    C -->|Three| F[Auto Scaling]
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


