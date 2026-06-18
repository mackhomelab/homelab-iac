#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

find "$ROOT" -name "*.tf" -not -path "*/.terraform/*" -printf "%h\n" \
  | sort -u \
  | while read -r dir; do
      echo "==> terraform apply: $dir"
      terraform -chdir="$dir" apply -auto-approve
    done
