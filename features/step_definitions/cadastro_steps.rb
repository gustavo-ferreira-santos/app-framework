Quando('clicar no botão de cadastro no sistema') do
  find_element_by_text(data_load(%w[login txt_btn_cadastrar])).click
  wait_for_element(class: cadastro.elements[:inpt_register])
end

Quando('preencher as informações de cadastro {string}') do |tipo|
  if tipo.eql?('positivo')
    find_element_by_class(cadastro.elements[:inpt_register]).send_keys(data_load(%w[cadastro phone_number]))
    find_element_by_text(data_load(%w[cadastro btn_next])).click
    find_element_by_class(cadastro.elements[:inpt_register]).send_keys(data_load(%w[cadastro register_name]))
    find_element_by_text(data_load(%w[cadastro btn_next])).click
    find_element_by_text(data_load(%w[cadastro btn_localiza_aut])).click
    find_element_by_text(data_load(%w[cadastro btn_sim])).click
  else
    find_element_by_class(cadastro.elements[:inpt_register]).send_keys(data_load(%w[cadastro incorrect_phone_number]))
    find_element_by_text(data_load(%w[cadastro btn_next])).click
  end
end
