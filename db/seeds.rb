# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if User.count == 0 
  User.create!(
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
      },
      {
        name: "Петр",
        surname: "Сидоров",
        role: :executor,
        phone: "89239245567",
        password: "peter"
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

if Order.count == 0
  Order.create!(
    [
      {
        city: "Белгород",
        locomotive: Locomotive.first,
        wheel_pairs: 6,
        budget: 15000,
        diem: 5000,
        rental_housing: 7000,
        housing: "Ленина, 12",
        tangen: 12,
        cup: 8,
        contact_person: ContactPerson.new(name: "Luke",
                                          surname: "Shaw",
                                          phone: "89633853434"),
        start_date: Date.today + 2.weeks,
        executor: User.executor.first
      },
      {
        city: "Владивосток",
        locomotive: Locomotive.last,
        wheel_pairs: 6,
        budget: 20000,
        diem: 7000,
        rental_housing: 5000,
        housing: "Кирова, 34",
        tangen: 10,
        cup: 9,
        contact_person: ContactPerson.new(name: "Luke",
                                          surname: "Shaw",
                                          phone: "89633853434"),
        start_date: Date.today + 11.days,
        executor: User.executor.last
      },
      {
        city: "Новосибирск",
        locomotive: Locomotive.last,
        wheel_pairs: 8,
        budget: 10000,
        diem: 5500,
        rental_housing: 8000,
        housing: "Автогенная, 17",
        tangen: 6,
        cup: 6,
        contact_person: ContactPerson.new(name: "Luke",
                                          surname: "Shaw",
                                          phone: "89633853434"),
        start_date: Date.today + 18.days,
        executor: User.executor.last
      },
      {
        city: "Новосибирск",
        locomotive: Locomotive.first,
        wheel_pairs: 6,
        budget: 12000,
        diem: 7800,
        rental_housing: 4500,
        housing: "Автогенная, 17",
        tangen: 4,
        cup: 4,
        contact_person: ContactPerson.new(name: "Luke",
                                          surname: "Shaw",
                                          phone: "89633853434"),
        start_date: Date.today + 25.days,
        executor: nil
      }
    ]
  )
end

User.executor.last.orders.first.completed!