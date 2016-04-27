FactoryGirl.define do
  factory :evento do
    descricao "MyString"
    data "MyString"
    horario "MyString"
    local "MyString"
    Estabelecimento nil
  end
end
