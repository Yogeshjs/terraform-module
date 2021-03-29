resource "aws_lb_target_group" "target-group" {
  name        = var.tg_name
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_listener_rule" "listener_rule" {
  listener_arn = var.listener_arn

  action {
    type = "forward"
    target_group_arn = aws_lb_target_group.target-group.arn
  }

  condition {
    path_pattern {
      values = var.path_value
    }
  }
}

resource "aws_ecs_service" "service" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.my-ecs-cluster.id
  task_definition = aws_ecs_task_definition.my-task-def.arn
  desired_count   = var.desired_count

  network_configuration {
    subnets = var.vpc_subnets
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.target-group.arn
    container_name = var.lb_container_name
    container_port = 80

  }

}