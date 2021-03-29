resource "aws_ecs_task_definition" "my-task-def" {
  family = var.task_definition_name
  container_definitions = var.task_definition_file

  requires_compatibilities = ["FARGATE"]

  network_mode = "awsvpc"

  cpu = "256"
  memory = "512"
}