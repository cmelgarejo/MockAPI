FactoryGirl.define do
  factory :campaign do |f|
    f.name {Faker::Company.catch_phrase}
    f.status {Faker::Name.last_name}
    f.budget {Faker::Commerce.price}
    f.advertising_channel_type {Faker::Company.name}
  end
end