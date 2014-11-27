cocktails = {
  "moscow mule" => [["vodka", 1], ["cucumber", 0.5], ["ices cubes", 1]],
  "bloody mary" => [["tomatoe", 2], ["vodka", 0.5], ["ices cubes", 1]],
  "white russian" => [["khalua", 2], ["vodka", 0.5], ["cream", 1], ["pepper", 0.1]]
}

cocktails.each do |cocktail, ingredients|
  c = Cocktail.create(name: cocktail)
  ingredients.each do |ingredient|
    dose = Dose.new
    dose.cocktail = c
    dose.ingredient = Ingredient.find_or_create_by(name: ingredient[0])
    dose.amount = ingredient[1]
    dose.save
  end
  c.save
end