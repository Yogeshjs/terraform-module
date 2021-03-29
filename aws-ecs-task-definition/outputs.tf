output "arn" {
    description = "ARN of the Task Definition"
    value = aws_ecs_task_definition.my-task-def.arn
}

output "family" {
    description = "The family of the Task Definition"
    value = aws_ecs_task_definition.my-task-def.family
}