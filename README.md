# homelab-iac

```text
homelab-iac/
├── README.md
├── CONTRIBUTING.md
├── .gitignore
│
├── modules/
│   ├── aws/
│   │   ├── networking/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── locals.tf
│   │   ├── compute/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── locals.tf
│   │   └── storage/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       ├── outputs.tf
│   │       └── locals.tf
│   │
│   └── azure/
│       ├── networking/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── locals.tf
│       ├── compute/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── locals.tf
│       └── storage/
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           └── locals.tf
│
├── aws/
│   ├── management/
│   │   ├── versions.tf
│   │   ├── providers.tf
│   │   ├── backend.tf
│   │   └── org/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       └── outputs.tf
│   │
│   ├── shared-services/
│   │   ├── versions.tf
│   │   ├── providers.tf
│   │   ├── backend.tf
│   │   ├── networking/
│   │   └── storage/
│   │
│   ├── dev/
│   │   ├── versions.tf
│   │   ├── providers.tf
│   │   ├── backend.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars
│   │   ├── terraform.tfvars.example
│   │   ├── networking/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── prod/
│       ├── versions.tf
│       ├── providers.tf
│       ├── backend.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       ├── terraform.tfvars.example
│       ├── networking/
│       ├── compute/
│       └── storage/
│
├── azure/
│   ├── management/
│   │   ├── versions.tf
│   │   ├── providers.tf
│   │   ├── backend.tf
│   │   └── org/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       └── outputs.tf
│   │
│   ├── shared-services/
│   │   ├── versions.tf
│   │   ├── providers.tf
│   │   ├── backend.tf
│   │   ├── networking/
│   │   └── storage/
│   │
│   ├── dev/
│   │   ├── versions.tf
│   │   ├── providers.tf
│   │   ├── backend.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars
│   │   ├── terraform.tfvars.example
│   │   ├── networking/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── prod/
│       ├── versions.tf
│       ├── providers.tf
│       ├── backend.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       ├── terraform.tfvars.example
│       ├── networking/
│       ├── compute/
│       └── storage/
│
├── global/
│   ├── dns/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── secrets/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── vpn/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── versions.tf
│
└── scripts/
    ├── init-all.sh
    ├── plan-all.sh
    └── apply-all.sh
```