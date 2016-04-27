# coding: utf-8

feature 'gerenciar Evento' do

  scenario 'incluir Evento' do 

    visit new_evento_path
    preencher_e_verificar_evento
  end

  scenario 'alterar Evento' do 

    evento = FactoryGirl.create(:evento)
    visit edit_evento_path(evento)
    preencher_e_verificar_evento

  end

   scenario 'excluir Evento' do 

    evento = FactoryGirl.create(:evento)
    visit eventos_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_evento

      fill_in 'Descricao',     :with => "Saturday Night"
      fill_in 'Data',  :with => "30-04-2016"
      fill_in 'Horario',     :with => "23:00"
      fill_in 'Local', :with => "Barra Music"

      click_button 'Salvar'

      expect(page).to have_content 'Descricao: Saturday Night'
      expect(page).to have_content 'Data: 30-04-2016'
      expect(page).to have_content 'Horario: 23:00'
      expect(page).to have_content 'Local: Barra Music'

  end
end