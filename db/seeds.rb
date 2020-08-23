# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lawyer1 = Lawyer.create(first_name: 'Howard', last_name: 'Zelbo')

litigation1 = Litigation.create(lawyer_id: 1, caption: 'A vs. B', court: 'SDNY', status: 'Active')
litigation2 = Litigation.create(lawyer_id: 1, caption: 'C vs. D', court: 'EDNY', status: 'Concluded')