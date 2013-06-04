FactoryGirl.define do
  factory :user do
    name 'Test USER'
    email 'test@example.com'
    password 'password'
    document_number 123456789
  end
end
