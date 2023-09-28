FactoryBot.define do
  factory :weapon do
    name {Faker::Name.first_name}
    level {1}
    xp {0}
    pb {100}
    ps {Faker::Number.within(range: 10..99)}
    description {ps <= 50 ? "arma comum" : "arma rara"}
  end
end

