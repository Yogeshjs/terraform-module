variable "service_name" {
    description = "Name of the ECS service"
    type = string
}

variable "tg_name" {
    description = "Name of the target group"
    type = string
}

variable "lb_container_name" {
    description = "The name of the container to associate with the load balancer (as it appears in a container definition)"
    type = string
}

variable "vpc_subnets" {
    description = "VPC subnets"
    type = list(string)
}

variable "vpc_id" {
    description = "VPC id"
    type = string
}

variable "listener_arn" {
    description = " The ARN of the listener to which to attach the rule"
    type = string
}

variable "path_value" {
    description = "path pattern"
    type = list(string)
}

variable "desired_count" {
    description = "No of instances of the task definition"
    value = number
}