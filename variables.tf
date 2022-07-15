variable "kubeconfig_path" {
  description = "Path to kubeconfig file on the machine from where Terraform commands will executed"
  default     = "~/.kube/config"
  type        = string
}

variable "sisense_release_namespace" {
  description = "Kubernetes namespace where Sisense helm chart will be deployed as a release"
  default     = "sisense"
  type        = string
}

variable "sisense_provisioner_helm_chart_url" {
  description = "URL of the Sisense provisioner helm chart"
  type        = string
}