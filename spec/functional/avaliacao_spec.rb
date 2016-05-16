# coding: utf-8

require 'spec_helper'

feature 'gerenciar Avaliacao' do

  before(:each) do
    @cliente = create(:Cliente, Nome: "Thais")
    @evento = create(:Evento, Descrição: "Saturday Night")
  end

  let(:dados) do {
    Nota: "10",
    Comentário: "Excelente",
    Cliente: "Thais",
    Evento: "Saturday Night"
   }
  end

  scenario 'incluir Avaliacao' do #, :js => true  do
    visit new_avaliacao_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar Avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao, nota, comentario, cliente: @cliente, evento: @evento)

    visit edit_avaliacao_path(avaliacao)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir Avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao, nota, comentario, cliente: @cliente, evento: @evento)
    visit avaliacoes_path

    click_link 'Excluir'

  end

  def preencher(dados)
    fill_in 'Nota', :with => dados[:nota]
    fill_in 'Comentário', :with => dados[:comentario]
    select dados[:cliente], from: "Cliente"
    select dados[:evento], from: "Evento"

  end

  def verificar(dados)

      page.should have_content "Nota: #{dados[:nota]}"
      page.should have_content "Comentário: #{dados[:comentario]}"
      page.should have_content "Cliente: #{dados[:cliente]}"
      page.should have_content "Evento: #{dados[:evento]}"

  end

end
