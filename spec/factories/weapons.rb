FactoryBot.define do
  factory :weapon do
    name {Faker::Name.first_name}
    level {Faker::Number.within(range: 1..99)}
    xp {0}
    pb {Faker::Number.within(range: 1..100)}
    ps {Faker::Number.within(range: 1..100)}
    description {ps <= 50 ? "arma comum" : "arma rara"}
  end
end

