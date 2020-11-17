# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create(name: "Doces")
c2 = Category.create(name: "Queijos")
c3 = Category.create(name: "Carnes")

Product.create(name: "Doce de leite", category: c1, price: 3000)
Product.create(name: "Doce de banana", category: c1, price: 3000)
Product.create(name: "Doce de goiaba", category: c1, price: 3000)
Product.create(name: "Doce de amora", category: c1, price: 3000)

Product.create(name: "Queijo fresco", category: c1, price: 3000)
Product.create(name: "Queijo minas", category: c1, price: 3000)
Product.create(name: "Queijo no vinho", category: c1, price: 3000)