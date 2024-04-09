resource "aws_route53_zone" "ruby-com-br" {
  force_destroy = false
  name          = "ruby.com.br"
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

# Diretório de comunidades Ruby
# community.ruby.com.br -> https://github.com/guru-br/guru-br.github.io
resource "aws_route53_record" "CNAME-community-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "community.ruby.com.br"
  type    = "CNAME"
  ttl     = 300
  records = ["guru-br.github.io"]
}

# Diretório de empresas Ruby criado pela Le Wagon e Tropical.rb
# empresas.ruby.com.br -> vast-guineafowl-iu7hx8tx58o0h63miig7mtb0.herokudns.com
resource "aws_route53_record" "CNAME-empresas-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "empresas.ruby.com.br"
  type    = "CNAME"
  ttl     = 300
  records = ["vast-guineafowl-iu7hx8tx58o0h63miig7mtb0.herokudns.com"]
}

# Redirecionamento tropical.ruby.com.br
# tropical.ruby.com.br -> www.tropicalrb.com (via https://github.com/wagner/tropical-ruby-com-br)
resource "aws_route53_record" "CNAME-tropical-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "tropical.ruby.com.br"
  type    = "CNAME"
  ttl     = 300
  records = ["wagner.github.io"] # Repositório com redirecionamento manual
}

# Arquitetura e Design de Aplicações Ruby (ada.ruby.com.br)
# ada.ruby.com.br -> https://adarb.org
resource "aws_route53_record" "CNAME-ada-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "ada.ruby.com.br"
  type    = "CNAME"
  ttl     = 300
  records = ["adarb.org"]
}

# Frevo on Rails (frevo.ruby.com.br)
# frevo.ruby.com.br -> https://github.com/frevo-on-rails/frevo-on-rails.github.com
resource "aws_route53_record" "CNAME-frevo-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "frevo.ruby.com.br"
  type    = "CNAME"
  ttl     = 300
  records = ["frevo-on-rails.github.io"]
}

# Frevo on Rails (pe.ruby.com.br)
# pe.ruby.com.br -> https://github.com/frevo-on-rails/frevo-on-rails.github.com
resource "aws_route53_record" "CNAME-pe-ruby-com-br" {
  zone_id = aws_route53_zone.ruby-com-br.id
  name    = "pe.ruby.com.br"
  type    = "CNAME"
  ttl     = 300
  records = ["frevo-on-rails.github.io"]
}
