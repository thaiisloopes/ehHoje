# coding: utf-8

feature 'gerenciar Ingresso' do

  scenario 'incluir Ingresso' do 

    visit new_ingresso_path
    preencher_e_verificar_ingresso
  end

  scenario 'alterar Ingresso' do 

    ingresso = FactoryGirl.create(:ingresso)
    visit edit_ingresso_path(ingresso)
    preencher_e_verificar_ingresso

  end

   scenario 'excluir Ingresso' do 

    ingresso = FactoryGirl.create(:ingresso)
    visit ingressos_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_ingresso

      fill_in 'Tipo ',     :with => "VIP"
      fill_in 'Valor',  :with => "R$ 60"
      fill_in 'Evento',     :with => "Brasileira"
      fill_in 'Cliente', :with => "27-07-94"
      

      click_button 'Salvar'

      expect(page).to have_content 'Nome: VIP'
      expect(page).to have_content 'Valor: R$ 60'
      expect(page).to have_content 'Evento: '
      expect(page).to have_content 'Cliente: '

  end
end