resource "aws_lb" "backend_alb" {
  name               = "${var.project}-${var.environment}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [local.backend]
  subnets            = local.subnet
    tags = merge(
    {
        Name = "${var.project}-${var.environment}-mysql"
    },
    local.common_tags
  )
  }
  



  resource "aws_lb_listener" "backend_listhner" {
  load_balancer_arn = aws_lb.backend_alb.arn
  port              = "80"
  protocol          = "HTTP"

   default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "hii from tirupti"
      status_code  = "200"
    }
  }
}


resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "*.backend-alb-${var.environment}.${var.domain_name}"
    type    = "A"

  alias {
    name                   = aws_lb.backend_alb.dns_name
    zone_id                = aws_lb.backend_alb.zone_id
    evaluate_target_health = true
  }
}