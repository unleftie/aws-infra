# k8s-resources terraform module

Should be applied after the `argocd-helm-chart` module to create additional resources in the EKS cluster using Argo CD applications

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                        | Version  |
| --------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform)    | >= 1.7.4 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                      | ~> 5.69  |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement_kubernetes) | ~> 2.32  |

## Inputs

| Name                                                               | Description                                   | Type          | Default                                                                                                                     | Required |
| ------------------------------------------------------------------ | --------------------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------- | :------: |
| <a name="input_git_source1"></a> [git_source1](#input_git_source1) | n/a                                           | `map(string)` | <pre>{<br/> "path": "",<br/> "repoURL": "https://github.com/example/example.git",<br/> "targetRevision": "HEAD"<br/>}</pre> |    no    |
| <a name="input_git_source2"></a> [git_source2](#input_git_source2) | n/a                                           | `map(string)` | <pre>{<br/> "path": "",<br/> "repoURL": "https://github.com/example/example.git",<br/> "targetRevision": "HEAD"<br/>}</pre> |    no    |
| <a name="input_region"></a> [region](#input_region)                | The AWS region in which resources are set up. | `string`      | `"eu-central-1"`                                                                                                            |    no    |

<!-- END_TF_DOCS -->
