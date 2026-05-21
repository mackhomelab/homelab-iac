# homelab-iac

```text
homelab-iac/
├── README.md
├── .gitignore
│
├── modules/                            # Unchanged — still reusable across everything
│   ├── networking/
│   ├── compute/
│   └── storage/
│
├── aws/
│   ├── management/                     # NEW — org policies, SCPs, IAM Identity Center
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   └── org/
│   │       ├── main.tf
│   │       └── outputs.tf
│   │
│   ├── shared-services/                # NEW — Transit Gateway, shared VPCs, ECR, DNS
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── networking/
│   │   └── storage/
│   │
│   ├── dev/                            # Was aws/ root before, now an account
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── terraform.tfvars
│   │   ├── terraform.tfvars.example
│   │   ├── networking/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── prod/                           # NEW account
│       ├── providers.tf
│       ├── _backend.tf
│       ├── terraform.tfvars
│       ├── terraform.tfvars.example
│       ├── networking/
│       ├── compute/
│       └── storage/
│
├── azure/
│   ├── management/                     # NEW — Entra ID, Management Groups, Policies
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   └── org/
│   │       ├── main.tf
│   │       └── outputs.tf
│   │
│   ├── shared-services/                # NEW — Hub VNet, Azure Firewall, DNS, ACR
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── networking/
│   │   └── storage/
│   │
│   ├── dev/                            # Was azure/ root before, now a subscription
│   │   ├── providers.tf
│   │   ├── _backend.tf
│   │   ├── terraform.tfvars
│   │   ├── terraform.tfvars.example
│   │   ├── networking/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── prod/                           # NEW subscription
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