terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.13.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.13.0"
    }
  }
}

provider "kubernetes" {
  /*config_path = "/etc/rancher/k3s/k3s.yaml"
  config_context = "default"*/

  // local development
  config_context = "docker-desktop"
  config_path    = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    /*config_path = "/etc/rancher/k3s/k3s.yaml"
    config_context = "default"*/

    // local development
    config_path    = "~/.kube/config"
    config_context = "docker-desktop"
  }
}