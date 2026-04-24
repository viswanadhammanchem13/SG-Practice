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


  