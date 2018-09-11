FactoryBot.define do
  factory :user do
    email { 'test@example.com' }
    password { 'f4k3p455w0rd' }
  end
  factory(:question) do
    title { 'geography' }
  end
end
