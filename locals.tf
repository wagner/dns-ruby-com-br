locals {
  records = {
    # ruby.com.br -> https://github.com/rubysummitbrasil/rubysummitbrasil.github.io
    # TODO: Mover para summit2021.ruby.com.br e usar o apex para outra coisa
    apex_a = {
      type = "A"
      name = "ruby.com.br"
      value = [
        "185.199.108.153",
        "185.199.109.153",
        "185.199.110.153",
        "185.199.111.153"
      ]
    }

    apex_txt = {
      type = "TXT"
      name = "ruby.com.br"
      value = "v=spf1 -all"
    }

    # Diretório de comunidades Ruby
    # community.ruby.com.br -> https://github.com/guru-br/guru-br.github.io
    community = {
      type  = "CNAME"
      name  = "community.ruby.com.br"
      value = "guru-br.github.io"
    }

    # Diretório de empresas Ruby criado pela Le Wagon e Tropical.rb
    # empresas.ruby.com.br -> vast-guineafowl-iu7hx8tx58o0h63miig7mtb0.herokudns.com
    empresas = {
      type  = "A"
      name  = "empresas.ruby.com.br"
      value = [
        "66.241.125.4"
      ]
    }

    # Redirecionamento tropical.ruby.com.br
    # tropical.ruby.com.br -> www.tropicalrb.com (via https://github.com/wagner/tropical-ruby-com-br)
    tropical = {
      type  = "CNAME"
      name  = "tropical.ruby.com.br"
      value = "wagner.github.io" # Repositório com redirecionamento manual
    }

    # Arquitetura e Design de Aplicações Ruby (ada.ruby.com.br)
    # ada.ruby.com.br -> https://adarb.org
    ada = {
      type  = "CNAME"
      name  = "ada.ruby.com.br"
      value = "adarb.org"
    }

    # Frevo on Rails (frevo.ruby.com.br)
    # frevo.ruby.com.br -> https://github.com/frevo-on-rails/frevo-on-rails.github.com
    frevo = {
      type  = "TXT"
      name  = "_github-pages-challenge-embs.frevo.ruby.com.br"
      value = "a5e75b0c0b048f320add8945e88165"
    }

    # Frevo on Rails (pe.ruby.com.br)
    # pe.ruby.com.br -> https://github.com/frevo-on-rails/frevo-on-rails.github.com
    pe = {
      type  = "CNAME"
      name  = "pe.ruby.com.br"
      value = "frevo-on-rails.github.io"
    }

    # Grupo de Usuários de Ruby de Goiás (go.ruby.com.br)
    # go.ruby.com.br -> https://github.com/RubyGoias
    go = {
      type  = "CNAME"
      name  = "go.ruby.com.br"
      value = "rubygoias.github.io"
    }

    # Goiás on Rails (goias.ruby.com.br)
    # goias.ruby.com.br -> https://github.com/RubyGoias
    goias = {
      type  = "CNAME"
      name  = "goias.ruby.com.br"
      value = "rubygoias.github.io"
    }
  }
}
