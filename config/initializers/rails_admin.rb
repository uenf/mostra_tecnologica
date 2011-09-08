# -*- encoding : utf-8 -*-

include ActionView::Helpers::NumberHelper

RailsAdmin.authorize_with :cancan

RailsAdmin.config do |config|

  config.navigation.max_visible_tabs 7

  config.models do
    fields_of_type :date do
      date_format :default
    end
  end

  config.model Administrador do
    sort_by :email
    sort_reverse false

    list do
      field :email
      field :current_sign_in_at
    end

    edit do
      field :email
      field :password do
        label "Senha"
      end
      field :password_confirmation do
        label "Repita a senha"
        help "Repita a senha."
      end
    end
  end

  config.model Empresa do
    object_label_method :nome
    sort_by :nome
    sort_reverse false

    list do
      field :nome
      field :telefone
      field :nome_para_contato
      field :email
    end

    edit do
      field :nome
      field :area_de_atuacao
      field :cnpj
      field :telefone
      field :nome_para_contato
      field :email
      field :site
      group :endereco do
        label 'Endereço'
        field :cep
        field :cidade
        field :estado do
          partial "select"
          help "Selecione um estado."
          properties[:collection] = Empresa::ESTADOS
        end
        field :bairro
        field :logradouro
        field :numero
        field :complemento
      end
      group :senha do
        label 'Senha'
        field :password do
          label "Senha"
        end
        field :password_confirmation do
          label "Repita a senha"
          help "Repita a senha."
        end
      end
    end
  end

  config.model Pagina do
    sort_by :titulo
    sort_reverse false

    list do
      field :titulo
    end

    edit do
      field :titulo
      field :conteudo, :text do
        ckeditor true
      end
    end
  end

  config.model Estagio do
    sort_by :funcao
    sort_reverse false

    list do
      field :empresa
      field :funcao
      field :carga_horaria_semanal
      field :remuneracao
    end

    edit do
      field :empresa_id, :belongs_to_association
      field :funcao
      field :area
      field :carga_horaria_semanal
      field :remuneracao
      field :inicio_do_expediente
      field :fim_do_expediente
      field :observacoes, :text do
        ckeditor true
      end
    end
  end

  config.model Inscricao do
    sort_by :nome
    sort_reverse false

    list do
      field :nome
      field :email
      field :instituicao
    end

    edit do
      field :nome
      field :cpf
      field :email
      field :instituicao
    end
  end
end

