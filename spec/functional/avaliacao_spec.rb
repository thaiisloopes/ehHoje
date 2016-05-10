# coding: utf-8

require 'spec_helper'

feature 'gerenciar avaliacao' do 

  scenario 'incluir avaliacao' do
    criar_evento
    visit new_avaliacao_path
    preencher_e_verificar_avaliacao
  end

  scenario 'alterar avaliacao' do
    criar_evento
    avaliacao = FactoryGirl.create(:avaliacao)
    visit edit_avaliacao_path(avaliacao)
    preencher_e_verificar_avaliacao
  end

  scenario 'excluir avaliacao' do
    criar_evento
    visit new_avaliacao_path
    preencher_e_verificar_avaliacao
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

  def preencher_e_verificar_avaliacao
      fill_in 'Nota', :with => "10"
      fill_in 'Comentario', :with => "Excelente"
      select "Thais", from: 'Cliente'
      select "Saturday Night", from: 'Evento'

      click_button 'Salvar'

      expect(page).to have_content 'Nota: 10'
      expect(page).to have_content 'Comentario: Excelente'
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