# coding: utf-8

feature 'gerenciar Cliente' do

  scenario 'incluir Cliente' do 

    visit new_cliente_path
    preencher_e_verificar_cliente
  end

  scenario 'alterar Cliente' do 

    cliente = FactoryGirl.create(:cliente)
    visit edit_cliente_path(cliente)
    preencher_e_verificar_cliente

  end

   scenario 'excluir Cliente' do 

    cliente = FactoryGirl.create(:cliente)
    visit clientes_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_cliente

      fill_in 'Nome',     :with => "Thais"
      fill_in 'CPF',  :with => "104.475.347-18"
      fill_in 'Nacionalidade',     :with => "Brasileira"
      fill_in 'Data de Nascimento', :with => "27-07-94"
      fill_in 'CEP', :with => "28.013-022"
      fill_in 'Endereço', :with => "Rua Saldanha Marinho"
      fill_in 'Cidade ', :with => "Campos dos Goytacazes"
      fill_in 'Estado', :with => "Rio de Janeiro"
      fill_in 'Celular', :with => "(22)9 9922-3905"
      fill_in 'Email', :with => "tlnloopes@gmail.com"
      fill_in 'Senha', :with => "123456"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Thais'
      expect(page).to have_content 'CPF: 104.475.347-18'
      expect(page).to have_content 'Nacionalidade: Brasileira'
      expect(page).to have_content 'Data de Nascimento: 27-07-94'
      expect(page).to have_content 'CEP: 28.013-022'
      expect(page).to have_content 'Endereço: Rua Saldanha Marinho'
      expect(page).to have_content 'Cidade: Campos dos Goytacazes'
      expect(page).to have_content 'Estado: Rio de Janeiro'
      expect(page).to have_content 'Celular: (22) 9 9922-3905'
      expect(page).to have_content 'Email: tlnloopes@gmail.com'
      expect(page).to have_content 'Senha: 123456'

  end
end