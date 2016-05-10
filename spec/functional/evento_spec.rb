# coding: utf-8

require 'spec_helper'

feature 'gerenciar evento' do 

  scenario 'incluir evento' do
    criar_estabelecimento
    visit new_evento_path
    preencher_e_verificar_evento
  end

  scenario 'alterar evento' do
    criar_estabelecimento
    evento = FactoryGirl.create(:evento)
    visit edit_evento_path(evento)
    preencher_e_verificar_evento
  end

  scenario 'excluir evento' do
    criar_estabelecimento
    visit new_evento_path
    preencher_e_verificar_evento
    visit estabelecimento_path
    click_link 'Excluir'
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

  def preencher_e_verificar_estabelecimento 
    fill_in 'Cnpj', :with => "123456789987456"
    fill_in 'Empresa', :with => "Barra Music"
    fill_in 'Email', :with => "barramusic@rio.rj.gov.br"
    fill_in 'Senha', :with => "12345678"
    fill_in 'Tipo', :with => "Boate"

    click_button 'Salvar'

    expect(page).to have_content 'Cnpj: 123456789987456'
    expect(page).to have_content 'Empresa: Barra Music'
    expect(page).to have_content 'Email: barramusic@rio.rj.gov.br'
    expect(page).to have_content 'Senha: 12345678'
    expect(page).to have_content 'Tipo: Boate'
  end

  def criar_estabelecimento
    visit new_estabelecimento_path
    preencher_e_verificar_estabelecimento
  end
  
end