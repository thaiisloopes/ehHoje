FactoryGirl.define do
  factory :ingresso do
    tipo "MyString"
    valor 1.5
    evento "MyString"
    cliente "MyString"
    Evento nil
    Cliente nil
  end
end
