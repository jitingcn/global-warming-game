# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless User.find_by(email: "t@t.t")
  User.create(email: "t@t.t",
    password: "123456",
    password_confirmation: "123456",
    admin: false)
end
unless Country.find_by(name: "A Country")
  Country.create(name: "A Country",
    description: "Example Country",
    category: "",
    properties: {
      economy: 310_000_000 * 10,
      food: 310_000_000 * 3,
      satisfaction: 80,
      population: 310_000_000,
      eco_awareness: 50,
      pollution: 5_172_338_000
    })
end
Policy.create([
  # {name: "let things drift",
  #  description: "No effect. Sometimes, do nothing is a wisdom too.",
  #  category: "",
  #  payload: {effects: []}},
  {name: "Big Farm Country",
   description: "No shame to be an agricultural country, at least your people will not suffer from Straving.",
   category: "Food Supply",
   payload: {cost: 5, effects: [
     {time: 3, type: "food", value: 1.5},
     {time: 3, type: "pollution", value: 1.2},
     {time: 3, type: "population", value: 1.05}
   ]}},
  {name: "Food Import",
   description: "Import food to meet your people's requirement, careful, your farmer may not like it.",
   category: "Food Supply",
   payload: {cost: 10, effects: [
     {time: 2, type: "food", value: 1.5},
     {time: 2, type: "economy", value: 0.8},
     {time: 2, type: "pollution", value: 0.8},
     {time: 2, type: "population", value: 1.05}
   ]}},
  # {name: "Technology Renovation",
  #  description: "How about introduce some new technologies into your agriculture production? It's costly but surely worth(maybe)!",
  #  category: "Food Supply",
  #  payload: {effects: []}},
  # {name: "Economic Crop",
  #  description: "Encourage your people to replace alimentary crop by economic crop, it worth more but you may need find another way to deal with the food supply issue.",
  #  category: "Food Supply",
  #  payload: {effects: []}},
  {name: "Sweat Shop",
   description: "Every work worth a pound, but only 1 peny left for who exact do the work maybe.sounds upset, but you may have no better option.",
   category: "Industry and Economy",
   payload: {cost: 5, effects: [
     {time: 2, type: "food", value: 0.9},
     {time: 2, type: "economy", value: 1.3},
     {time: 2, type: "pollution", value: 2},
     {time: 2, type: "satisfaction", value: 0.9}
   ]}},
  {name: "Empowered By Industry",
   description: "No idea about the pollution, only know it brings countless job positions and tax revenue..",
   category: "Industry and Economy",
   payload: {cost: 20, effects: [
     {time: 3, type: "food", value: 0.9},
     {time: 3, type: "economy", value: 1.3},
     {time: 3, type: "pollution", value: 1.5},
   ]}},
  # {name: "industry tax",
  #  description: "Some poeple may not like it, and here, some poeple means the people may contribute majority of your tax revenue.",
  #  category: "Industry and Economy",
  #  payload: {effects: []}},
  # {name: "industrial Transfer",
  #  description: "As you have some better options, how about leave the less options to other less developed countries?",
  #  category: "Industry and Economy",
  #  payload: {effects: []}},
  {name: "Renewable energy",
   description: "Wind, tide, solar.....sounds good and actually, they are, but the problem is, who pay for it.",
   category: "Electricity",
   payload: {cost: 10, effects: [
     {time: 3, type: "economy", value: 0.8},
     {time: 3, type: "pollution", value: 0.9},
     {time: 2, type: "satisfaction", value: 1.3}
   ]}},
  {name: "Fossil Fuel",
   description: "How it can goes wrong with a reliable fuel source we used for last hundred years?",
   category: "Electricity",
   payload: {cost: 5, effects: [
     {time: 3, type: "economy", value: 1.1},
     {time: 3, type: "pollution", value: 1.2},
   ]}},
  {name: "Environmental awareness",
   description: "Least cost option, some advertisements and posters",
   category: "Education",
   payload: {cost: 5, effects: [
     {time: 1, type: "eco_awareness", value: 1.01},
   ]}},
  {name: "Educational Renovation",
   description: "It's super efficient while start with children.",
   category: "Education",
   payload: {cost: 20, effects: [
     {time: 5, type: "eco_awareness", value: 1.05},
   ]}},
  {name: "Public Traffic",
   description: "Never being a bad idea to develop public traffic.",
   category: "Environmental Investment",
   payload: {cost: 20, effects: [
     {time: 2, type: "pollution", value: 0.9},
     {time: 2, type: "eco_awareness", value: 1.01},
   ]}},
  # {name: "Shared Bike",
  #  description: "An interesting idea, no harm to spend a littile on it and see how it goes.",
  #  category: "Environmental Investment",
  #  payload: {cost: 5, effects: [
  #
  #  ]}},
  {name: "Pollution Administer",
   description: "It doesnt help the envirnment much, but may help some people stop complaining about it.",
   category: "Environmental Investment",
   payload: {cost: 10, effects: [
     {time: 2, type: "pollution", value: 0.8},
     {time: 2, type: "economy", value: 0.8},
   ]}},
  # {name: "Pollution Restriction",
  #  description: "No one take it seriously, unless it is in a legalistic document.",
  #  category: "Environmental Investment",
  #  payload: {cost: 10, effects: [
  #
  #  ]}},
  # {name: "Pollution transfer",
  #  description: "I assume there are lots of country happy to help you to deal with your pollution as long as decent payback provided.",
  #  category: "Environmental Investment",
  #  cost: 20,
  #  payload: {effects: []}},
  {name: "Power Restrictions",
   description: "It's no harm to claim to protect the world environment, but it can be a different thing when ask you to spend less energy.",
   category: "Environmental Investment",
   payload: {cost: 10, effects: [
     {time: 2, type: "pollution", value: 0.9},
     {time: 2, type: "satisfaction", value: 0.9}
   ]}},
  {name: "Planting trees",
   description: "Time can prove the work, but sometimes, it take decades.",
   category: "Environmental Investment",
   payload: {cost: 10, effects: [
     {time: 2, type: "pollution", value: 0.96},
     {time: 2, type: "eco_awareness", value: 1.005},
   ]}}
])
