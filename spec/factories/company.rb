FactoryBot.define do
  factory :company, class: Company do
    name { 'Padaria Dale' }
    owner_name { 'Dalessandro' }
    balance { 0 }
  end
end
