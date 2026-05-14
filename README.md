# terraform-vra-cloudzone

Terraform module — creates and manages a vRA / Aria Automation cloud zone, associating compute resources (clusters or tag-matched hosts) within a region to a cloud account.

## Usage example

```hcl
module "lab_zone" {
  source = "sentania-labs/cloudzone/vra"

  name      = "vcf-lab-wld01-zone"
  region    = var.region_id

  compute_ids      = ["cluster-abc123"]
  placement_policy = "DEFAULT"

  capability_tags = [
    { key = "cloud", value = "vsphere" }
  ]
}
```

See `examples/` for a complete working configuration.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.0 |
| <a name="requirement_vra"></a> [vra](#requirement\_vra) | >= 0.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vra"></a> [vra](#provider\_vra) | >= 0.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vra_zone.this](https://registry.terraform.io/providers/vmware/vra/latest/docs/resources/zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capability_tags"></a> [capability\_tags](#input\_capability\_tags) | Capability tags to be applied to the Cloud Zone | `list(map(string))` | `[]` | no |
| <a name="input_compute_ids"></a> [compute\_ids](#input\_compute\_ids) | List of compute IDs (clusters, hosts, etc.) to associate with the Cloud Zone | `list(string)` | `[]` | no |
| <a name="input_custom_properties"></a> [custom\_properties](#input\_custom\_properties) | Custom properties to apply to the Cloud Zone | `map(string)` | `{}` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the Cloud Zone | `string` | `null` | no |
| <a name="input_folder"></a> [folder](#input\_folder) | The folder relative path to the datacenter where resources are deployed (vSphere only) | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Cloud Zone | `string` | n/a | yes |
| <a name="input_placement_policy"></a> [placement\_policy](#input\_placement\_policy) | Placement policy for the Cloud Zone | `string` | `"DEFAULT"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region ID where the Cloud Zone is created | `string` | n/a | yes |
| <a name="input_tags_to_match"></a> [tags\_to\_match](#input\_tags\_to\_match) | Tags to match for filtering clusters | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_zone"></a> [cloud\_zone](#output\_cloud\_zone) | The cloud zone name, ID, and external region ID |
<!-- END_TF_DOCS -->