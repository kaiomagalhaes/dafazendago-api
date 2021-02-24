# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create(name: "Doces", order: 1)
c2 = Category.create(name: "Queijos", order: 2)
c3 = Category.create(name: "Carnes", order: 3)

Product.create(name: "Doce de leite", category: c1, price: 3000)
Product.create(name: "Doce de banana", category: c1, price: 3000)
Product.create(name: "Doce de goiaba", category: c1, price: 3000)
Product.create(name: "Doce de amora", category: c1, price: 3000)

Product.create(name: "Queijo fresco", category: c2, price: 3000)
Product.create(name: "Queijo minas", category: c2, price: 3000)
Product.create(name: "Queijo no vinho", category: c2, price: 3000)

Product.create(name: "Lombo suíno defumado", category: c3, price: 3000)
Product.create(name: "Bacon", category: c3, price: 3000)
Product.create(name: "Rosbife bovino defumado", category: c3, price: 3000)