FactoryGirl.define do
  factory :reserva do
    data "MyString"
    hora "MyString"
    cliente "MyString"
    eventoCliente nil
    Evento nil
  end
end
