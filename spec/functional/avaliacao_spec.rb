# coding: utf-8

feature 'gerenciar Avaliacao' do

  scenario 'incluir Avaliacao' do 

    visit new_avaliacao_path
    preencher_e_verificar_avaliacao
  end

  scenario 'alterar Avaliacao' do 

    avaliacao = FactoryGirl.create(:avaliacao)
    visit edit_avaliacao_path(avaliacao)
    preencher_e_verificar_avaliacao

  end

   scenario 'excluir Avaliacao' do 

    avaliacao = FactoryGirl.create(:avaliacao)
    visit avaliacoes_path
    click_link 'Excluir'

  end

  def preencher_e_verificar_avaliacao

      fill_in 'Nota',     :with => "10"
      fill_in 'Comentário',  :with => "Excelente"
      fill_in 'Cliente',     :with => ""
      fill_in 'Avaliado', :with => ""

      click_button 'Salvar'

      expect(page).to have_content 'Nota: 10'
      expect(page).to have_content 'Comentário: Excelente'
      expect(page).to have_content 'Cliente:'
      expect(page).to have_content 'Avaliado:'
  end
end