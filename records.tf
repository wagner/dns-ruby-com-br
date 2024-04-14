resource "aws_route53_zone" "ruby-com-br" {
  force_destroy = false
  name          = "ruby.com.br"
}

resource "aws_route53_record" "record" {
  for_each = local.records
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = each.value.name
  type    = each.value.type
  ttl     = 300
  records = each.value.value[*]
}
