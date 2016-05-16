# coding: utf-8

require 'spec_helper'

feature 'gerenciar Reserva' do

  before(:each) do
    @cliente = create(:Cliente, nome: "Thais")
    @evento = create(:Evento, nome: "Saturday Night")
  end


  let(:dados) do {
    Data: "30-04-2016",
    Horário: "23:00",
    Cliente: "Thais",
    Evento: "Saturday Night"
   }
  end

  scenario 'incluir Reserva' do #, :js => true  do
    visit new_reserva_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar Reserva' do #, :js => true  do

    reserva = FactoryGirl.create(:reserva, Data: data, Horário: horario, Cliente: @cliente, evento: @evento)

    visit edit_reserva_path(reserva)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'excluir Reserva' do #, :js => true  do

    reserva = FactoryGirl.create(:reserva, Data: data, Horário: horario, Cliente: @cliente, evento: @evento)
    visit reservas_path

    click_link 'Excluir'

  end

  def preencher(dados)
    fill_in 'Data', :with => "07-05-2016"
    fill_in 'Hora', :with => "23:00"
    select dados[:cliente], from: "Cliente"
    select dados[:eveto], from: "Evento"

  end

  def verificar(dados)
    page.should have_content "Data: #{dados[:data]}"
    page.should have_content "Horário: #{dados[:horario]}"
    page.should have_content "Cliente: #{dados[:cliente]}"
    page.should have_content "Evento: #{dados[:evento]}"

  end

end
