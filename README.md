
# Terraform module example

[![Latest Release][release-badge]][release-url]
[![Build Status][github-badge]][github-url]
[![License][license-badge]][license-url]

A Terraform module uses as a template to start new Terraform module.

It includes all the module automation (versioning, providers update, lint, security) and best practices from HashiCorp.

* [Pre-commit][pre-commit-url]: enforce checks on the module before commit
* [Semantic Release][semantic-release-url]: automate the release and version process
* [Reviewdog][reviewdog-url]: automate the review process with per code line comments (TFLint & TFSec checks)
* [Renovate][renovate-url]: automate the dependency management (update provider version, etc.)
* [ShiftLeft SCAN][shiftleft-scan-url]: security audit tool to detect security flaws in application and infrastructure code

## Usage

### Called from this Git repository

If you want to use this module inside your project, you can use the following code (change the tag to the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-module-example.git?ref=tags/0.0.2"
}
```

### Output example

```bash
terraform init
terraform plan
```

```bash
Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # time_static.update will be created
  + resource "time_static" "update" {
      + day     = (known after apply)
      + hour    = (known after apply)
      + id      = (known after apply)
      + minute  = (known after apply)
      + month   = (known after apply)
      + rfc3339 = (known after apply)
      + second  = (known after apply)
      + unix    = (known after apply)
      + year    = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + labels = {
      + businessunit = "mycompany"
      + environment  = "dev"
      + project      = "my-project"
      + team         = "devops"
      + terraform    = "true"
      + updated      = (known after apply)
    }
```

[github-badge]: https://github.com/timoa/terraform-module-example/workflows/Terraform/badge.svg
[github-url]: https://github.com/timoa/terraform-module-example/actions?query=workflow%3ATerraform
[release-badge]: https://img.shields.io/github/release/timoa/terraform-module-example.svg
[release-url]: https://github.com/timoa/terraform-module-example/releases/latest
[license-badge]: https://img.shields.io/github/license/timoa/terraform-module-example.svg
[license-url]: https://github.com/timoa/terraform-module-example/blob/main/LICENSE
[pre-commit-url]: https://pre-commit.com/
[semantic-release-url]: https://semantic-release.gitbook.io/semantic-release/
[reviewdog-url]: https://github.com/reviewdog/reviewdog
[renovate-url]: https://www.whitesourcesoftware.com/free-developer-tools/renovate/
[shiftleft-scan-url]: https://shiftleft.io/docs/scan/
