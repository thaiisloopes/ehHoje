# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Reserva' do

  before(:each) do
    @cliente = create(:cliente, Nome: "Thais")
    @evento = create(:evento, Descrição: "Saturday Night")
  end

  let(:dados) do {
    Data: "30-04-2016",
    Horário: "23:00",
    Cliente: "Thais",
    Evento: "Saturday Night"
   }
  end

  scenario 'Incluir Reserva' do #, :js => true  do
    visit new_reserva_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Reserva' do #, :js => true  do
    reserva = FactoryGirl.create(:reserva, Cliente: @cliente, Evento: @evento)
    visit edit_reserva_path(reserva)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Reserva' do #, :js => true  do
    reserva = FactoryGirl.create(:reserva, Cliente: @cliente, Evento: @evento)
    visit reservas_path
    click_link 'Excluir'
  end

  def preencher(dados)
    select dados[:cliente], from: "Nome"
    select dados[:Evento], from: "Descrição"
    fill_in 'Horário',  with: dados[:Horário]
    fill_in 'Data',  with: dados[:Data]
  end


  def verificar(dados)
    page.should have_content "Data: #{dados[:Data]}"
    page.should have_content "Horário: #{dados[:Horário]}"
    page.should have_content "Cliente: #{dados[:Cliente]}"
    page.should have_content "Evento: #{dados[:Evento]}"

  end

end
