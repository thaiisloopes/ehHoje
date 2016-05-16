# coding: utf-8

require 'spec_helper'

feature 'gerenciar Estabelecimento' do

  scenario 'incluir Estabelecimento' do
    visit new_estabelecimento_path
    preencher_e_verificar_estabelecimento
  end

  scenario 'alterar Estabelecimento' do
    estabelecimento = FactoryGirl.create(:estabelecimento)
    visit edit_estabelecimento_path(estabelecimento)
    preencher_e_verificar_estabelecimento

  end

  scenario 'excluir Estabelecimento' do
    estabelecimento = FactoryGirl.create(:estabelecimento)
    visit estabelecimentos_path
    click_link 'Excluir'
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
end
