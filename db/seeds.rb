# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if User.count == 0 
  User.create(
    [
      {
        name: "Иван",
        surname: "Плотников",
        role: :manager,
        phone: "89161343606",
        password: "admin"
      },
      {
        name: "Александр",
        surname: "Семенов",
        role: :executor,
        phone: "89633854682",
        password: "alex"
      }
    ]
  )
end

Locomotive.find_or_create_by!(
  model: "ТЭМ",
  wheel_pairs: 6
)

Locomotive.find_or_create_by!(
  model: "ЧМЭЗ",
  wheel_pairs: 6
)