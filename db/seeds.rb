# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  name: "Иван",
  surname: "Плотников",
  role: :manager,
  phone: "89161343606",
  # email: "ivan@plotnik.off",
  password: "admin"
)

User.create!(
  name: "Александр",
  surname: "Семенов",
  role: :executor,
  phone: "89633854682",
  # email: "alex@semen.off",
  password: "alex"
)