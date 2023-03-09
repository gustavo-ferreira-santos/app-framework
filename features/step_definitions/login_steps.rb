Dado('acessar a página inicial do app') do
  wait_for_element(id: login.elements[:action_bar_root])
  wait_for_text(data_load(%w[login txt_btn_cadastrar]))
  expect(is_visible?(data_load(%w[login txt_btn_cadastrar]))).to be_truthy
  expect(is_visible?(data_load(%w[login txt_btn_entrar]))).to be_truthy
end

Quando('realizar o login no sistema {string}') do |tipo|
  if tipo.eql?('positivo')
    find_element_by_text(data_load(%w[login txt_btn_entrar])).click
  else
    # Como na versão disponibilizada do aplicativo o login esta mockado, o cenário negativo é feito apenas sleepando na tela
    sleep(2)
  end
end

Então('validar login realizado com sucesso {string}') do |tipo|
  if tipo.eql?('positivo')
    wait_for_text(data_load(%w[login lbl_location]))
    expect(is_visible?(data_load(%w[login lbl_baixa]))).to be_truthy
    expect(is_visible?(data_load(%w[login lbl_alta]))).to be_truthy
  else
    expect(is_visible?(data_load(%w[login lbl_baixa]))).not_to be_truthy
    expect(is_visible?(data_load(%w[login lbl_alta]))).not_to be_truthy
  end
end
