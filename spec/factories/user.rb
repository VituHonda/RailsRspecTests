FactoryBot.define do
  factory :user do
    nickname {Faker::Name.first_name}
    kind {%i[knight wizard].sample}
    level {Faker::Number.within(range: 1..99)}
  end
end