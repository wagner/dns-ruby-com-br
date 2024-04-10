resource "aws_route53_zone" "ruby-com-br" {
  force_destroy = false
  name          = "ruby.com.br"
}

resource "aws_route53_record" "record" {
  for_each = local.records
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = each.key
  type    = each.value.type
  ttl     = 300
  records = [each.value.value]
}

# ruby.com.br -> https://github.com/rubysummitbrasil/rubysummitbrasil.github.io
# TODO: Mover para summit2021.ruby.com.br e usar o apex para outra coisa
resource "aws_route53_record" "A-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "ruby.com.br"
  type    = "A"
  ttl     = 300

  # Endereços IPs para apex domain no GitHub
  # https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
  records = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153"
  ]
}

# Registros TXT
resource "aws_route53_record" "TXT-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "ruby.com.br"
  type    = "TXT"
  ttl     = 300

  records = [
    "v=spf1 -all" # Política para bloquear emails ruby.com.br enquanto não estamos usando
  ]
}
