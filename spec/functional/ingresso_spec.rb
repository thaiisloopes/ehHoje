#coding: utf-8

require 'spec_helper'

feature 'gerenciar Ingresso' do

  before(:each) do
    @cliente = create(:cliente, Nome: "Thais")
    @evento = create(:evento, Nome: "Saturday Night")
  end


  let(:dados) do {
    Tipo: "VIP",
    Valor: "R$ 60",
    Cliente: "Thais",
    Evento: "Saturday Night"
   }
  end

  scenario 'incluir Ingresso' do #, :js => true  do
    visit new_ingresso_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar Ingresso' do #, :js => true  do

    ingresso = FactoryGirl.create(:ingresso, Tipo: tipo, Valor: valor, Cliente: @cliente, Evento: @evento)

    visit edit_ingresso_path(ingresso)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir Ingresso' do #, :js => true  do

    ingresso = FactoryGirl.create(:ingresso, Tipo: tipo, Valor: valor, Cliente: @cliente, Evento: @evento)
    visit ingressos_path

    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Tipo', :with => "VIP"
    fill_in 'Valor', :with => "R$ 60"
    select dados[:cliente], from: "Cliente"
    select dados[:evento], from: "Evento"

  end

  def verificar(dados)
    expect(page).to have_content 'Tipo: VIP'
    expect(page).to have_content 'Valor: R$ 60'
    expect(page).to have_content 'Cliente: #{dados[:cliente]}'
    expect(page).to have_content 'Evento: #{dados[:evento]}'

  end

end
