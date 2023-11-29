locals {
  host        = data.aws_eks_cluster.cluster.endpoint
  certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token       = data.aws_eks_cluster_auth.cluster.token
}