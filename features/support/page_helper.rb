Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects 
  def login
      PageObjects::LoginPage.new
  end

  def cadastro
    PageObjects::CadastroPage.new
  end
end