# homelab-iac

```text
homelab-iac/
├── README.md
├── .gitignore
│
├── modules/                           
│   ├── networking/
│   ├── compute/
│   └── storage/
│
├── aws/
│   ├── management/                     
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   └── org/
│   │       ├── main.tf
│   │       └── outputs.tf
│   │
│   ├── shared-services/                
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── networking/
│   │   └── storage/
│   │
│   ├── dev/                           
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── terraform.tfvars
│   │   ├── terraform.tfvars.example
│   │   ├── networking/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── prod/                          
│       ├── providers.tf
│       ├── _backend.tf
│       ├── terraform.tfvars
│       ├── terraform.tfvars.example
│       ├── networking/
│       ├── compute/
│       └── storage/
│
├── azure/
│   ├── management/                     
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   └── org/
│   │       ├── main.tf
│   │       └── outputs.tf
│   │
│   ├── shared-services/               
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── networking/
│   │   └── storage/
│   │
│   ├── dev/                           
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── terraform.tfvars
│   │   ├── terraform.tfvars.example
│   │   ├── networking/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── prod/                          
│       ├── providers.tf
│       ├── _backend.tf
│       ├── terraform.tfvars
│       ├── terraform.tfvars.example
│       ├── networking/
│       ├── compute/
│       └── storage/
│
├── global/                            
│   ├── dns/
│   └── secrets/
│
└── scripts/
    ├── init-all.sh
    ├── plan-all.sh
    └── apply-all.sh
```