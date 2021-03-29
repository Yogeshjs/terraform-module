resource "aws_ecs_cluster" "my-ecs-cluster" {
  name = var.cluster_name
}