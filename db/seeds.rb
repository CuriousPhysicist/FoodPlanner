# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# sample ingredients
10.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    description: Faker::Lorem.paragraph,
    quantity: 10
  ).tap do |ingredient|
    %w[Protein Fat Carboydrate].each do |group|
      ingredient.macro_nutrients.create(
        group: group,
        specific_quantity: 3.5
      )
    end
  end
end
