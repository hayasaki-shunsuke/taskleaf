FactoryBot.define do
  factory :task do
    name { 'テストユーザー' }
    description { 'RSpec&Capybara&FactoryBotを準備する'}
    user
  end
end