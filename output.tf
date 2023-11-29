output "demo_endpoint" {
  value = "${kubernetes_service.demo.status[0].load_balancer[0].ingress[0].hostname}:8080"
}