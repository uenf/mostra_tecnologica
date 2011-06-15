#language: pt

Funcionalidade: Manipular empresa
  Como um administrador
  Eu quero manipular as empresas
  Para que eu possa disponibilizar seus dados no site

  Esquema do Cenário: Cadastrar uma empresa
    Dado que eu sou um administrador logado
    Quando eu clico em "Empresa"
    E eu clico em "Adicionar"
    E eu preencho "Nome" com "<Nome>"
    E eu preencho "CNPJ" com "<CNPJ>"
    E eu preencho "CEP" com "<CEP>"
    E eu seleciono "<Estado>" em "Estado"
    E eu preencho "Cidade" com "<Cidade>"
    E eu preencho "Bairro" com "<Bairro>"
    E eu preencho "Logradouro" com "<Logradouro>"
    E eu preencho "Número" com "<Número>"
    E eu preencho "Complemento" com "Prédio P5 - Sala 121"
    E eu preencho "E-mail" com "<E-mail>"
    E eu preencho "Telefone" com "<Telefone>"
    E eu preencho "Nome para contato" com "<Nome para contato>"
    E eu preencho "Site" com "<Site>"
    E eu preencho "Senha" com "<Senha>"
    E eu preencho "Repita a senha" com "<Confirmação de senha>"
    E eu pressiono "Gravar"
    Então eu devo ver "<Mensagem>"
    E eu devo ter <N> empresas

    Exemplos:
      | Nome      | CNPJ               | CEP      | Estado         | Cidade | Bairro | Logradouro       | Número | Telefone   | Nome para contato | E-mail          | Site           | Senha  | Confirmação de senha | Mensagem                              | N |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | Empresa foi criado(a) com sucesso     | 1 |
      |           | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras |                    | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras | 11.111.111/1111-11 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | número inválido                       | 0 |
      | Petrobras | 113                | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | número inválido                       | 0 |
#      | Petrobras | 69.103.604/0001-60 |          | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
#      | Petrobras | 69.103.604/0001-60 | 28015200 |                | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
#      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro |        | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
#      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos |        | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
#      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro |                  | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
#      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas |        | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     |            | Fulano            | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 |                   | algum@email.com | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email     | www.google.com | 123456 | 123456               | não é válido.                         | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            |                 | www.google.com | 123456 | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google     | 123456 | 123456               | não é válido.                         | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com |        | 123456               | não pode ser vazio.                   | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | abcdef               | não está de acordo com a confirmação. | 0 |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 |                      | não pode ser vazio.                   | 0 |

