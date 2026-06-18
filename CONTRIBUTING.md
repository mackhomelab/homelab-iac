# Contributing

## Getting started

1. Clone the repository and ensure [Terraform](https://developer.hashicorp.com/terraform/downloads) is installed.
2. Copy `terraform.tfvars.example` to `terraform.tfvars` in the relevant environment directory and fill in required values.
3. Run `scripts/init-all.sh` to initialise all workspaces.

## Workflow

- **Plan** changes with `scripts/plan-all.sh` before applying.
- **Apply** with `scripts/apply-all.sh` (requires appropriate cloud credentials).
- Keep module interfaces stable — bump the module version if breaking changes are needed.

## Directory layout

See `README.md` for the full directory structure.
