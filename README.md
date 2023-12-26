<!-- BEGIN_TF_DOCS -->
# Quick AWS VPN

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Terraform project which create VPC and Client VPN resource on AWS from scratch.

## *Create and destroy the infrastructure*

### 2. Create infrastructure

```shell
git clone https://gitlab.com/mbasri/quick-aws-vpn.git
cd quick-aws-vpn
terraform init
terraform apply
```

### 2. Destroy infrastructure

```shell
git clone https://gitlab.com/mbasri/quick-aws-vpn.git
cd quick-aws-vpn
terraform init
terraform destroy
```

## Generate docs

```shell
terraform-docs -c .terraform-docs.yml .
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.6.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.25.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-kms | v1.0.4 |
| <a name="module_security-group"></a> [security-group](#module\_security-group) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-security-group | v1.0.2 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-vpc | v1.1.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | The ID of the VPC default security group |
| <a name="output_iam_instance_profile_arn"></a> [iam\_instance\_profile\_arn](#output\_iam\_instance\_profile\_arn) | The ARN of the IAM Instance Profile |
| <a name="output_iam_instance_profile_id"></a> [iam\_instance\_profile\_id](#output\_iam\_instance\_profile\_id) | The ID of the IAM Instance Profile |
| <a name="output_iam_instance_profile_name"></a> [iam\_instance\_profile\_name](#output\_iam\_instance\_profile\_name) | The Name of the IAM Instance Profile |
| <a name="output_instance_arn"></a> [instance\_arn](#output\_instance\_arn) | The Instance ARN |
| <a name="output_instance_availability_zone"></a> [instance\_availability\_zone](#output\_instance\_availability\_zone) | The availability zone of the created instance |
| <a name="output_instance_ebs_block_device_volume_ids"></a> [instance\_ebs\_block\_device\_volume\_ids](#output\_instance\_ebs\_block\_device\_volume\_ids) | Block devices IDs |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The Instance ID |
| <a name="output_instance_instance_state"></a> [instance\_instance\_state](#output\_instance\_instance\_state) | The state of the instance |
| <a name="output_instance_key_name"></a> [instance\_key\_name](#output\_instance\_key\_name) | The Key used by the Instance |
| <a name="output_instance_primary_network_interface_id"></a> [instance\_primary\_network\_interface\_id](#output\_instance\_primary\_network\_interface\_id) | The ID of the instance's primary network interface |
| <a name="output_instance_private_dns"></a> [instance\_private\_dns](#output\_instance\_private\_dns) | The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC |
| <a name="output_instance_private_ip"></a> [instance\_private\_ip](#output\_instance\_private\_ip) | The private IP address assigned to the instance |
| <a name="output_instance_root_block_device_volume_ids"></a> [instance\_root\_block\_device\_volume\_ids](#output\_instance\_root\_block\_device\_volume\_ids) | Root EBS IDs |
| <a name="output_instance_subnet_id"></a> [instance\_subnet\_id](#output\_instance\_subnet\_id) | Subnet used by the instance |
| <a name="output_instance_vpc_security_group_ids"></a> [instance\_vpc\_security\_group\_ids](#output\_instance\_vpc\_security\_group\_ids) | List of security group used by the instance |
| <a name="output_key_alias_arn"></a> [key\_alias\_arn](#output\_key\_alias\_arn) | The Amazon Resource Name (ARN) of the key alias |
| <a name="output_key_alias_name"></a> [key\_alias\_name](#output\_key\_alias\_name) | Name of the key alis |
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | The Amazon Resource Name (ARN) of the key |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | Name of the key |
| <a name="output_key_policy"></a> [key\_policy](#output\_key\_policy) | The IAM resource policy set on the key |
| <a name="output_nat_gateway_public_ips"></a> [nat\_gateway\_public\_ips](#output\_nat\_gateway\_public\_ips) | Private IP of NAT Gateway |
| <a name="output_private_subnet_cidr"></a> [private\_subnet\_cidr](#output\_private\_subnet\_cidr) | List of cidr\_blocks of private subnets |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | List of IDs of private subnets |
| <a name="output_public_subnet_cidr"></a> [public\_subnet\_cidr](#output\_public\_subnet\_cidr) | List of cidr\_blocks of public subnets |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | List of IDs of public subnets |
| <a name="output_region"></a> [region](#output\_region) | The Name of the region |
| <a name="output_secure_subnet_cidr"></a> [secure\_subnet\_cidr](#output\_secure\_subnet\_cidr) | List of cidr\_blocks of secure subnets |
| <a name="output_secure_subnet_ids"></a> [secure\_subnet\_ids](#output\_secure\_subnet\_ids) | List of IDs of secure subnets |
| <a name="output_security_group_arn"></a> [security\_group\_arn](#output\_security\_group\_arn) | The ARN of the security group |
| <a name="output_security_group_description"></a> [security\_group\_description](#output\_security\_group\_description) | The description of the security group |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | The ID of the security group |
| <a name="output_security_group_name"></a> [security\_group\_name](#output\_security\_group\_name) | The name of the security group |
| <a name="output_security_group_owner_id"></a> [security\_group\_owner\_id](#output\_security\_group\_owner\_id) | The owner ID |
| <a name="output_security_group_vpc_id"></a> [security\_group\_vpc\_id](#output\_security\_group\_vpc\_id) | The VPC ID |
| <a name="output_spot_logging_cwl_id"></a> [spot\_logging\_cwl\_id](#output\_spot\_logging\_cwl\_id) | The IDs of the cloudwatch logs for Spot logging |
| <a name="output_ssm_session"></a> [ssm\_session](#output\_ssm\_session) | Command to start ssm session |
| <a name="output_vpc_cidr_blocks"></a> [vpc\_cidr\_blocks](#output\_vpc\_cidr\_blocks) | The CIDR block of the VPC |
| <a name="output_vpc_flow_log_cwl_id"></a> [vpc\_flow\_log\_cwl\_id](#output\_vpc\_flow\_log\_cwl\_id) | The ID of the cloudwatch logs for VPC flow logs |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |

## Author

* [**Mohamed BASRI**](https://gitlab.com/mbasri)

## License

This is free and unencumbered software released into the public domain - see the [LICENSE](./LICENSE) file for details

<!-- END_TF_DOCS -->