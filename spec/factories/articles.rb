require 'factory_bot'

FactoryBot.define do
  factory :article do
    title { 't' }
    content { 'c' }
    after(:build) do |article|
      article.data.attach(
        io: File.open("spec/fixtures/sample.json"),
        filename: "sample",
        content_type: "application/json"
      )
    end
  end
end
