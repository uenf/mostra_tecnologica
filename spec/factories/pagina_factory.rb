# -*- encoding : utf-8 -*-
# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :pagina do |f|

  f.id Pagina::ID[:associe_se]
  f.titulo 'Associe-se'
  f.conteudo '<p>Podem ser associados da SBF, empresas, técnicos e fruticultores nacionais e estrangeiros, com o objetivo de atender aos propósitos da entidade pelo desenvolvimento da fruticultura brasileira.</p>
<p>Os Sócios da SBF recebem gratuitamnete o Informativo SBF e a Revista Brasileira de Fruticultura e obtém descontos nas nscrições dos Congressos e eventos promovidos pela SBF.</p>
<p>Para informações na área de fruticultura, especialistas, dúvidas, estatísticas, contacte a SBF pelo nosso e-mail: <a href="mailto:contato@fruticultura.org">contato@fruticultura.org</a><p>
<p>Para associar-se a SBF preencha o formulário abaixo e escolha sua forma de pagamento.</p>'

end

