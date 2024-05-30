resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_master_role.arn
  version  = var.kubernetes_version

  vpc_config {
    subnet_ids = [
      aws_subnet.subnet_priv_eks.id,
      aws_subnet.subnet_pub_eks.id
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_cluster,
    aws_iam_role_policy_attachment.eks_cluster_service,
  ]
}
resource "aws_eks_fargate_profile" "fargate_eks" {
  cluster_name           = var.cluster_name
  fargate_profile_name   = var.fargate_profile_name
  pod_execution_role_arn = aws_iam_role.eks_fargate_role.arn

  selector {
    namespace = "default"
  }
  selector {
    namespace = "monitoring"
  }
  selector {
    namespace = "producao"
  }

  subnet_ids = [
    aws_subnet.subnet_priv_eks.id,
  ]

}