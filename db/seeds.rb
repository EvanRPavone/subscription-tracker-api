# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
subscription_a = Subscription.create(name: "Netflix", price: "13.99", paymentDate: "12/23", plan: "Monthly")
subscription_b = Subscription.create(name: "Hulu", price: "11.99", paymentDate: "01/12", plan: "Monthly")
subscription_c = Subscription.create(name: "Game Pass", price: "9.99", paymentDate: "03/23", plan: "Monthly")
subscription_d = Subscription.create(name: "Photoshop", price: "9.99", paymentDate: "06/05", plan: "Monthly")

category_a = Category.create(name: "Streaming")
category_b = Category.create(name: "Gaming")
category_c = Category.create(name: "Other")

subscription_category_a = SubscriptionCategory.create(subscription: subscription_a, category: category_a)
subscription_category_b = SubscriptionCategory.create(subscription: subscription_b, category: category_a)
subscription_category_c = SubscriptionCategory.create(subscription: subscription_c, category: category_b)
subscription_category_d = SubscriptionCategory.create(subscription: subscription_d, category: category_c)