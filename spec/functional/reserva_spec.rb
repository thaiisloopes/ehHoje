# coding: utf-8

require 'spec_helper'

feature 'gerenciar reserva' do 

  scenario 'incluir reserva' do
    criar_evento
    visit new_reserva_path
    preencher_e_verificar_reserva
  end

  scenario 'alterar reserva' do
    criar_evento
    reserva = FactoryGirl.create(:reserva)
    visit edit_reserva_path(reserva)
    preencher_e_verificar_reserva
  end

  scenario 'excluir reserva' do
    criar_evento
    visit new_reserva_path
    preencher_e_verificar_reserva
    visit eventos_path
    click_link 'Excluir'
  end

  def criar_cliente
    cliente = FactoryGirl.create(:cliente)
    visit new_cliente_path
    preencher_e_verificar_cliente
  end

  def criar_evento
    criar_cliente
    visit new_evento_path
    preencher_e_verificar_evento
  end

  def preencher_e_verificar_reserva
    fill_in 'Data abertura', :with => '01/05/2016'
    fill_in 'Conteudo', :with => 'Rails - capybara'
    select "Programacao OO web", from: 'evento'
    click_button 'Salvar'
    expect(page).to have_content 'Data abertura: 01/05/2016'
    expect(page).to have_content 'Conteudo: Rails - capybara'
  end

  def preencher_e_verificar_reserva

      fill_in 'Data', :with => "07-05-2016"
      fill_in 'Hora', :with => "23:00"
      select "Thais", from: 'cliente'
      select "Saturday Night", from: 'evento'

      click_button 'Salvar'

      expect(page).to have_content 'Data: 07-05-2016'
      expect(page).to have_content 'Hora: 23:00'
  end

  def preencher_e_verificar_evento
    fill_in 'Descricao', :with => "Saturday Night"
    fill_in 'Data', :with => "30-04-2016"
    fill_in 'Horario', :with => "23:00"
    select "Barra Music", from: 'Estabelecimento'

    click_button 'Salvar'

    expect(page).to have_content 'Descricao: Saturday Night'
    expect(page).to have_content 'Data: 30-04-2016'
    expect(page).to have_content 'Horario: 23:00'
    expect(page).to have_content 'Local: Barra Music'
  end

  def preencher_e_verificar_cliente

      fill_in 'Nome', :with => "Thais"
      fill_in 'Cpf', :with => "104.475.347-18"
      fill_in 'Nacionalidade', :with => "Brasileira"
      fill_in 'Dtnasc', :with => "27-07-94"
      fill_in 'Cep', :with => "28.013-022"
      fill_in 'Endereco', :with => "Rua Saldanha Marinho"
      fill_in 'Cidade', :with => "Campos dos Goytacazes"
      fill_in 'Estado', :with => "Rio de Janeiro"
      fill_in 'Celular', :with => "(22)9 9922-3905"
      fill_in 'Email', :with => "tlnloopes@gmail.com"
      fill_in 'Senha', :with => "123456"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Thais'
      expect(page).to have_content 'Cpf: 104.475.347-18'
      expect(page).to have_content 'Nacionalidade: Brasileira'
      expect(page).to have_content 'Dtnasc: 27-07-94'
      expect(page).to have_content 'Cep: 28.013-022'
      expect(page).to have_content 'Endereco: Rua Saldanha Marinho'
      expect(page).to have_content 'Cidade: Campos dos Goytacazes'
      expect(page).to have_content 'Estado: Rio de Janeiro'
      expect(page).to have_content 'Celular: (22)9 9922-3905'
      expect(page).to have_content 'Email: tlnloopes@gmail.com'
      expect(page).to have_content 'Senha: 123456'
  end
  
end