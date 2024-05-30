resource "aws_ecs_cluster" "ecs-cluster" {
  name = "${var.nomeCluster}-${var.Ambiente}"
}

resource "aws_ecs_task_definition" "main" {
  family                   = "service"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 256
  memory                   = 512
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  task_role_arn            = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([
    {
      name        = "${var.name}-container-${var.Ambiente}"
      image       = "${var.container_image}:latest"
      essential   = true
      enviroment = var.Ambiente
      portMappings = [
        {
          protocol     = "tcp"
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "main" {
 name                               = "${var.name}-service-${var.Ambiente}"
 cluster                            = aws_ecs_cluster.main.id
 task_definition                    = aws_ecs_task_definition.main.arn
 desired_count                      = 2
 deployment_minimum_healthy_percent = 50
 deployment_maximum_percent         = 200
 launch_type                        = "FARGATE"
 scheduling_strategy                = "REPLICA"
 
 network_configuration {
   security_groups  = aws_security_group.*.id
   subnets          = aws_subnet.*.id
   assign_public_ip = false
 }
 
 load_balancer {
   container_name   = "${var.name}-container-${var.Ambiente}"
   container_port   = var.ContainerPort
 }
 
 lifecycle {
   ignore_changes = [task_definition, desired_count]
 }
}

resource "aws_appautoscaling_target" "ecs_target" {
  max_capacity       = 4
  min_capacity       = 1
  resource_id        = "service/${aws_ecs_cluster.ecs-cluster.name}/${aws_ecs_task_definition.main.family}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"
}
