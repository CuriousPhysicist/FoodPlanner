MACRO_NUTRIENTS = [
  ["Protein", nil],
  ["Fats", nil],
  ["Carboydrate", "Starch"],
  ["Carboydrate", "Sugar"]
].freeze

MICRO_NUTRIENTS = [
  ["Minerals", 'Sodium', '(mg)'],
  ["Vitamins", 'Vitamin A', '(mg)'],
].freeze

# sample ingredients
10.times do
  Ingredient.create!(
    name: Faker::Food.ingredient,
    description: Faker::Lorem.paragraph,
    quantity: 10
  ).tap do |ingredient|
    MACRO_NUTRIENTS.each do |group, name|
      ingredient.macro_nutrients.create(
        group: group,
        name: name,
        specific_quantity: 3.5,
        unit: '(g)'
      )
    end
    MICRO_NUTRIENTS.each do |group, name, unit|
      ingredient.micro_nutrients.create(
        group: group,
        name: name,
        specific_quantity: 1.2,
        unit: unit
      )
    end
  end
end
