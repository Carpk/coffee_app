# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.create(name: "Brothers", store: "Publix")
Brand.create(name: "Eight O'Clock", store: "supermarkets")
Brand.create(name: "Starbucks", store: "supermarkets")
Brand.create(name: "Dunkin'", store: "supermarkets")
Brand.create(name: "Green Mountain", store: "supermarkets")
Brand.create(name: "Peet's", store: "supermarkets")

6.times do |id|
  id += 1
  Bean.create(brand_id: id, name: "Hazelnut", roast: "Light", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
  Bean.create(brand_id: id, name: "Colombian", roast: "Medium", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
  Bean.create(brand_id: id, name: "House Blend", roast: "Dark", 
              description: "apricot, blueberries, paint thinner, gamy, leathery, dark chocolate")
  Bean.create(brand_id: id, name: "French Vanilla", roast: "Medium", 
              description: "earthy, mushroomy, wet forest, molasses")
  Bean.create(brand_id: id, name: "Breakfast Blend", roast: "Medium", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
end

5.times do |id|
  id += 1
  Bean.create(brand_id: id, name: "Carmel", roast: "Light", 
              description: "Profoundly creamy and pleasantly sweet")
  Bean.create(brand_id: id, name: "Italian Roast", roast: "Medium", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
  Bean.create(brand_id: id, name: "Rainforest Blend", roast: "Medium", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
end

3.times do |id|
  id += 1
  Bean.create(brand_id: id, name: "Coconut", roast: "Light", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
  Bean.create(brand_id: id, name: "Pumkin Spice", roast: "Light", 
    description: "Buttery and sweet with the rich flavor of warm roasted nuts")
end

1.times do |id|
  id += 1
  Bean.create(brand_id: id, name: "Sumatra", roast: "Dark", 
              description: "Buttery and sweet with the rich flavor of warm roasted nuts")
end

# 47 beans
brewer = ["Drip", "Chemex", "Drip", "Drip", "French Press", "French Press", "Stovetop"]

Review.create(bean_id: rand(1..47), user: Faker::Internet.user_name, experiance: rand(3..20),
              brew: brewer.sample, caffeine: rand(1..5), flavor: rand(2..5), rating: rand(1..5),
              comment: Faker::Lorem.sentence)

