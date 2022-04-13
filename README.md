# Terraform module template

A Terraform module uses as a template to start new Terraform module.

It includes all the module automation (versioning, providers update, lint, security) and best practices from HashiCorp.

* Pre-commit configuration
* Semantic Release configuration
* Renovate configuration

## Usage

### Called from this Git repository

If you want to use this module inside your project, you can use the following code (change the tag to the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-module-template.git?ref=tags/0.0.2"
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.7.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_time"></a> [time](#provider\_time) | 0.7.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [time_static.update](https://registry.terraform.io/providers/hashicorp/time/0.7.2/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_labels"></a> [labels](#input\_labels) | Default labels to associate to these resources | `map(string)` | <pre>{<br>  "businessunit": "mycompany",<br>  "team": "devops",<br>  "terraform": "true"<br>}</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Project name that will be use to identifiy the resources | `string` | `"my-project"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage/environment name to tag and suffix the infrastructure composants | `string` | `"dev"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_labels"></a> [labels](#output\_labels) | The generated labels |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
