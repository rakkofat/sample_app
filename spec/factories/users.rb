FactoryGirl.define do
  factory :user do |f|
    f.name "Jonathan Devers"
    f.email "fatty@fatty.com"
    f.password "annaishot"
    f.password_confirmation "annaishot"
  end
end
