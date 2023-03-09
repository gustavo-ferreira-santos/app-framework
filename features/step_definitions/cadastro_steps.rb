Quando('clicar no botão de cadastro no sistema') do
  binding.pry
  find_element_by_text(data_load(%w[login txt_btn_cadastrar])).click
end

Quando('preencher as informações de cadastro {string}') do |tipo|
  sleep(1)
end

Então('validar cadastro realizado com sucesso {string}') do |tipo|
    sleep(1)
end
