#language: pt
Funcionalidade: Gerenciar páginas

  Como um administrador
  Eu quero gerenciar as páginas
  Para que as pessoas possam vê-las

  Cenário: Não pode ser possível adicionar páginas
    Dado que eu sou um administrador logado
    Quando eu clico em "Página"
    Então eu não devo ver "Adicionar"

  Cenário: Não pode ser possível deletar páginas
    Dado que eu sou um administrador logado
    Quando eu clico em "Página"
    Então eu não devo ver "Excluir"

  Cenário: Alterar uma página
    Dado que eu sou um administrador logado
    E que eu tenho uma página com título "Organiza"
    Quando eu clico em "Página"
    Quando eu clico em "Alterar"
    E eu preencho "Título" com "Organização"
    E eu pressiono "Gravar"
    Então eu devo ver "Organização"

#  Esquema do Cenário: Visualizar as páginas
#    Dado que eu tenho uma página com título "<Página>" com id <id>
#    E que eu estou na página inicial
#    Quando eu clico em "<Página>"
#    Então eu devo estar na <path>

#    Exemplos:
#     | Página                   | path                               | id |
#     | Apresentação             | página de apresentação             | 9  |
#     | Programação              | página da programação              | 11 |
#     | Organização              | página da organização              | 13 |
#     | Oportunidades de estágio | página de oportunidades de estágio | 15 |

