resource "aws_security_group""main"{
  name        = "var.sg-name"
  description = "var.sg-description"
  vpc_id      = var.vpc-id
  tags        = merge(
    var.sg-tags,
    local.common_tags,{
        Name = "${var.project}-${var.environment}-${var.sg-name}-sg"
    }

  )
}

resource "aws_security_group_rule" "sg_rule" {
  type              = "ingress"
  from_port         =22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.security_group.sg-id
}
  