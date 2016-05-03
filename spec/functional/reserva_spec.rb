# coding: utf-8

feature 'gerenciar reserva' do

  scenario 'incluir Reserva' do 

    visit new_reserva_path
    preencher_e_verificar_reserva
  end

  scenario 'alterar Reserva' do 

    reserva = FactoryGirl.create(:reserva)
    visit edit_reserva_path(reserva)
    preencher_e_verificar_reserva

  end

   scenario 'excluir Reserva' do 

    reserva = FactoryGirl.create(:reserva)
    visit reservas_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_reserva

      fill_in 'Data',     :with => "07-05-2016"
      fill_in 'Hora',  :with => "23:00"
      fill_in 'Cliente',     :with => ""
      fill_in 'Evento', :with => ""

      click_button 'Salvar'

      expect(page).to have_content 'Data: 07-05-2016'
      expect(page).to have_content 'Hora: 23:00'
      expect(page).to have_content 'Cliente: '
      expect(page).to have_content 'Evento: '
  end
end