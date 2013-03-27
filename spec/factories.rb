FactoryGirl.define do
  factory :post, class: Midori::Post do
    sequence(:title) { |n| "Example Title #{n}" }
    date { Time.now }
    body "Lorem ipsum..."
    # status "draft"
    slug { title.parameterize }
    # email { "#{username}@example.com" }
  end
end
