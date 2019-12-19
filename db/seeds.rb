# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
owner = Owner.create(name: "John's Snacks")
john  = owner.machines.create(location: "John's Snack Shop")
snack1 = john.snacks.create(price: "2.50",
                            name: "snack1")
snack2 = john.snacks.create(price: "3.50",
                            name: "snack2")
