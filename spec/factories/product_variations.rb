FactoryBot.define do
  factory :product_variation, class: 'Product::Variation' do
    product

    price    { rand(1000) / 100.0 }
    quantity { rand(10) }
  end
end
