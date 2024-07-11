resource "helm_release" "traefik" {
  name  = "traefik"
  repository = "https://helm.traefik.io/traefik"
  chart = "traefik"
  version    = var.versions.traefik
  timeout = 900 # 15 minutes
}

resource "kubernetes_manifest" "traefik_dashboard_ingress" {
  manifest = {
    "apiVersion" = "traefik.containo.us/v1alpha1"
    "kind"       = "IngressRoute"
    "metadata" = {
      "name" = "dashboard"
    }
    "spec" = {
      "entryPoints" = ["web"]
      "routes" = [
        {
          "match" = "Host(`traefik.${var.domain}`)"
          "kind"  = "Rule"
          "services" = [
            {
              "name" = "api@internal"
              "kind" = "TraefikService"
            }
          ]
        }
      ]
    }
  }
}