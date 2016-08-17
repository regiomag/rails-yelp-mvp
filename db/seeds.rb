# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  restaurant = Restaurant.create([{ name: 'Star Wars',  address: 'road 1',  phone_number: "2654562453423", category: "french" }])
  restaurant = Restaurant.create([{ name: 'Jamie',  address: 'road 2',  phone_number: "2654562453423", category: "chinese" }])
  restaurant = Restaurant.create([{ name: 'Le dindon',  address: 'road 3',  phone_number: "2654562453423", category: "french" }])
  # , { name: 'Lord of the Rings' }
  # Character.create(name: 'Luke', movie: movies.first)
#
