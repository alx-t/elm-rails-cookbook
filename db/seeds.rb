7.times do |t|
  Recipe.create!(title: "Recipe #{t} title", description: "Recipe #{t} description")
end
