FactoryGirl.define do
  factory :reserva do
    data "MyString"
    hora "MyString"
    Cliente nil
    Evento nil
  end
end
