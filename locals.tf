locals {
  records = {

    # Diretório de comunidades Ruby
    # community.ruby.com.br -> https://github.com/guru-br/guru-br.github.io
    community = {
        type  = "CNAME"
        value = "guru-br.github.io"
    }

    # Diretório de empresas Ruby criado pela Le Wagon e Tropical.rb
    # empresas.ruby.com.br -> vast-guineafowl-iu7hx8tx58o0h63miig7mtb0.herokudns.com
    empresas = {
        type = "CNAME"
        value = "vast-guineafowl-iu7hx8tx58o0h63miig7mtb0.herokudns.com"
    }

    # Redirecionamento tropical.ruby.com.br
    # tropical.ruby.com.br -> www.tropicalrb.com (via https://github.com/wagner/tropical-ruby-com-br)
    tropical = {
        type = "CNAME"
        value = "wagner.github.io" # Repositório com redirecionamento manual
    }

    # Arquitetura e Design de Aplicações Ruby (ada.ruby.com.br)
    # ada.ruby.com.br -> https://adarb.org
    ada = {
        type = "CNAME"
        value = "adarb.org"
    }

    # Frevo on Rails (frevo.ruby.com.br)
    # frevo.ruby.com.br -> https://github.com/frevo-on-rails/frevo-on-rails.github.com
    frevo = {
        type = "CNAME"
        value = "frevo-on-rails.github.io"
    }

    # Frevo on Rails (pe.ruby.com.br)
    # pe.ruby.com.br -> https://github.com/frevo-on-rails/frevo-on-rails.github.com
    pe = {
        type = "CNAME"
        value = "frevo-on-rails.github.io"
    }
    
  }
}
