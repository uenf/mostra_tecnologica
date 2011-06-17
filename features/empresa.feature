#language: pt

Funcionalidade: Manipular informações da minha empresa
  Como um representante da minha empresa
  Eu quero manipular suas informações
  Para que eu possa mantê-las atualizadas

  Esquema do Cenário: Cadastrar minha empresa
    Dado que eu estou na página de cadastro de empresas
    Quando eu preencho "Nome" com "<Nome>"
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
    E eu pressiono "Enviar"
    Então eu devo ver "<Mensagem>"
    E eu devo ter <N> empresas

    Exemplos:
      | Nome      | CNPJ               | CEP      | Estado         | Cidade | Bairro | Logradouro       | Número | Telefone   | Nome para contato | E-mail          | Site           | Senha  | Confirmação de senha | Mensagem                              | N |
      | Petrobras | 69.103.604/0001-60 | 28015200 | Rio de Janeiro | Campos | Centro | Av. das Américas | 56     | 2222222222 | Fulano            | algum@email.com | www.google.com | 123456 | 123456               |                                       | 1 |
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

