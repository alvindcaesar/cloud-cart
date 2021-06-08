# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    name: "Test Account",
    email: "test@gmail.com",
    password: "password",
    password_confirmation: "password"
)

10.times do |_i|
    Product.create!(
        product_name: "Super Product",
        description: "Lorem ipsum super product that being used as a template",
        price: 11.99,
        sku: "SP-0001"
    )
end