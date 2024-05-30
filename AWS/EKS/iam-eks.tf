# Recurso para o papel de mestre do EKS
resource "aws_iam_role" "eks_master_role" {
  name = format("%s-master-role", var.cluster_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
  })

}

# Anexo da política AmazonEKSClusterPolicy ao papel de mestre do EKS
resource "aws_iam_role_policy_attachment" "eks_cluster_cluster" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_master_role.name
}

# Anexo da política AmazonEKSServicePolicy ao papel de mestre do EKS
resource "aws_iam_role_policy_attachment" "eks_cluster_service" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.eks_master_role.name
}

# Recurso para o papel de nó do EKS
resource "aws_iam_role" "eks_node_role" {
  name = format("%s-node-role", var.cluster_name)

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks-fargate-pods.amazonaws.com" # Mudança para permitir o Fargate
      }
    }]
    Version = "2012-10-17"
  })

}

# Anexo da política AmazonEKSFargatePodExecutionRolePolicy ao papel de nó do EKS
resource "aws_iam_role_policy_attachment" "eks_fargate_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
  role       = aws_iam_role.eks_node_role.name
}

# Recurso para o papel do Fargate
resource "aws_iam_role" "eks_fargate_role" {
  name = format("%s-fargate-role", var.cluster_name)

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks-fargate-pods.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}
