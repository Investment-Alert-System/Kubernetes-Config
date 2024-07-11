resource "helm_release" "investment-alert-frontend"{
    name = "${var.context}-${var.stage}-frontend"
    chart = "../helm/investment-alert-frontend"
    namespace = "investment-alert-frontend"
}

resource "helm_release" "stock-data-streamer" {
    name = "${var.context}-${var.stage}-backend"
    chart = "../helm/stock-data-streamer"
    namespace = "stock-data-streamer"
}

resource "helm_release" "prometheus-stack" {
    name = "prometheus"
    chart = "../helm/prometheus-stack"
    namespace = "default"
}
