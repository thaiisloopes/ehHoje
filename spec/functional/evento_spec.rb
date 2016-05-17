# coding: utf-8

require 'spec_helper'

feature 'gerenciar Evento' do

  before(:each) do
    @estabelecimento = create(:Estabelecimento, nome: "Barra Music")
  end


  let(:dados) do {

    Descrição: "Saturday Night",
    Data: "30-04-2016",
    Horário: "23:00",
    Local: "Barra Music"
   }
  end

  scenario 'incluir evento' do #, :js => true  do
    visit new_evento_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar evento' do #, :js => true  do

    evento = FactoryGirl.create(:evento, Estabelecimento: @estabelecimento )

    visit edit_evento_path(evento)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir evento' do #, :js => true  do

    evento = FactoryGirl.create(:evento, Estabelecimento: @estabelecimento)
    visit eventos_path

    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Descrição',  with: dados[:Descrição]
    fill_in 'Data',  with: dados[:Data]
    fill_in 'Horário', with: dados[:Horário]
    select dados[:estabelecimento], from: "Estabelecimento"


  end

  def verificar(dados)

    page.should have_content "Descrição: #{dados[:Descrição]}"
    page.should have_content "Data: #{dados[:Data]}"
    page.should have_content "Horário: #{dados[:Horário]}"
    page.should have_content "Local: #{dados[:estabelecimento]}"

  end

end
+
