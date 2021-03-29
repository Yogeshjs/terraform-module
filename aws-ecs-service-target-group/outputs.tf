output "tg-name" {
    description = "The name of the Target Group"
    value = aws_lb_target_group.target-group.name
}

output "tg-arn" {
    description = "The ARN of the Target Group"
    value = aws_lb_target_group.target-group.arn
}

output "listener-rule-arn" {
    description= "The ARN of the rule"
    value = aws_lb_listener_rule.listener_rule.arn
}

output "service-name" {
    description = "The name of the service"
    value = aws_ecs_service.service.name
}

output "service-cluster" {
    description = "The Amazon Resource Name (ARN) of cluster which the service runs on"
    value = aws_ecs_service.service.cluster
}

output "service-cluster" {
    description = "The ARN of IAM role used for ELB"
    value = aws_ecs_service.service.iam_role
}

output "service-cluster" {
    description = "The number of instances of the task definition"
    value = aws_ecs_service.service.desired_count
}

