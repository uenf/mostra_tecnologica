# -*- encoding : utf-8 -*-
Dado /^que eu sou um visitante do site$/ do
  Factory.create :pagina # Está criando a página 'Associe-se'
  visit root_path
end

Dado /^que eu estou na (.+)$/ do |pagina|
  visit path_to(pagina)
end

Quando /^o sistema visita "([^"]*)"$/ do |url|
  get url
end

Quando /^eu clico em "([^"]*)"(?: em "([^"]*)")?$/ do |link, escopo|
  with_scope (escopo) do
    click_link(link)
  end
end

Quando /^eu preencho "([^"]*)" com "([^"]*)"(?: em "([^"]*)")?$/ do |campo, valor, escopo|
  with_scope (escopo) do
    fill_in(campo, :with => valor)
  end
end

Quando /^eu pressiono "([^"]*)"(?: em "([^"]*)")?$/ do |botao, escopo|
  with_scope (escopo) do
    click_button(botao)
  end
end

Quando /^eu marco "([^"]*)"$/ do |campo|
  check(campo)
end

Quando /^eu desmarco "([^"]*)"(?: em "([^"]*)")?$/ do |field, selector|
  with_scope(selector) do
    uncheck(field)
  end
end

Quando /^(?:|eu )anexo o arquivo "([^"]*)" ao campo "([^"]*)"(?: within "([^"]*)")?$/ do |path, field, selector|
  with_scope(selector) do
    attach_file(field, path)
  end
end

Quando /^eu seleciono "([^"]*)" em "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

Quando /^(?:|eu )escolho "([^"]*)"(?: em "([^"]*)")?$/ do |field, selector|
  with_scope(selector) do
    choose(field)
  end
end

Quando /^eu vou para(?: a| o) (.+)$/ do |pagina|
  visit path_to(pagina)
end

Então /^(?:|eu )devo ver "([^"]*)"(?: em "([^"]*)")?$/ do |text, selector|
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_content(text)
    else
      assert page.has_content?(text)
    end
  end
end

Então /^eu não devo ver "([^"]*)"(?: em "([^"]*)")?$/ do |text, selector|
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_no_content(text)
    else
      assert page.has_no_content?(text)
    end
  end
end

Então /^o campo "([^"]*)"(?: em "([^"]*)")? deve conter "([^"]*)"$/ do |field, selector, value|
  with_scope(selector) do
    field = find_field(field)
    field_value = (field.tag_name == 'textarea') ? field.text : field.value
    if field_value.respond_to? :should
      field_value.should =~ /#{value}/
    else
      assert_match(/#{value}/, field_value)
    end
  end
end

Então /^eu devo estar (na|no) (.+)$/ do |opcao, page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Então /^eu( não)? devo ver um link com o título "(.+?)"(?: que redireciona para "(.+)")?$/ do |negacao, titulo, link|
  if negacao
    if link.blank?
      page.should_not have_link(titulo)
    else
      page.should_not have_link(titulo, :href => link)
    end
  else
    if link.blank?
      page.should have_link(titulo)
    else
      page.should have_link(titulo, :href => link)
    end
  end
end

Então /^eu( não)? devo ver um link para "(.+)"$/ do |negacao, link|
  if negacao
    page.should_not have_link('', :href => link)
  else
    page.should have_link('', :href => link)
  end
end

Então /^eu( não)? devo ver uma tag "(.+)" com a imagem "(.+)" como plano de fundo$/ do |negacao, tag, image|
  if negacao
    page.should_not have_xpath("//#{tag}[contains(@style, '#{image}')]")
  else
    page.should have_xpath("//#{tag}[contains(@style, '#{image}')]")
  end
end

Então /^eu( não)? devo ver a imagem "([^"]*)"(?: em "([^"]*)")?$/ do |negacao, image, escopo|
  if negacao
    if escopo
      page.all(escopo) do
        have_no_xpath("//*/img[contains(@src, '#{image}')]")
      end
    else
      page.should have_no_xpath("//*/img[contains(@src, '#{image}')]")
    end
  else
    if escopo
      page.all(escopo) do
        have_xpath("//*/img[contains(@src, '#{image}')]")
      end
    else
      page.should have_xpath("//*/img[contains(@src, '#{image}')]")
    end
  end
end

Então /^eu devo ver o erro "([^"]*)"$/ do |status|
  page.status_code.should == status.to_i
end

Então /^(?:|eu )devo ver [a|o] (id|class) "([^"]*)" na tag "([^"]*)"$/ do |atributo, valor, tag|
  page.should have_xpath("//#{tag}[@#{atributo}=\"#{valor}\"]")
end

Então /^(?:|eu )não devo ver [a|o] (id|class) "([^"]*)" na tag "([^"]*)"$/ do |atributo, valor, tag|
  page.should_not have_xpath("//#{tag}[@#{atributo}=\"#{valor}\"]")
end

