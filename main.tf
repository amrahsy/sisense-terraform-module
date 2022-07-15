provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

resource "helm_release" "sisense_release" {
  name             = "provisioner-${var.sisense_release_namespace}"
  chart            = var.sisense_provisioner_helm_chart_url
  namespace        = var.sisense_release_namespace
  create_namespace = true

  values = [
    file("${path.module}/provisioner-chart-values.yaml")
  ]

}
