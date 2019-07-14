FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    body { "MyText" }
    article
  end
end
