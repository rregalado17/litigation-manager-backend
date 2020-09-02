# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lawyer1 = Lawyer.create(first_name: 'Howard', last_name: 'Zelbo')
lawyer1 = Lawyer.create(first_name: 'Christopher', last_name: 'Moore')
lawyer1 = Lawyer.create(first_name: 'Jon', last_name: 'Blackman')

litigation1 = Litigation.create(lawyer_id: 2, caption: 'A vs. B', court: 'SDNY', status: 'Active')
litigation2 = Litigation.create(lawyer_id: 3, caption: 'C vs. D', court: 'EDNY', status: 'Concluded')
litigation3 = Litigation.create(lawyer_id: 2, caption: 'E vs. F', court: 'Second Circuit', status: 'Concluded')
litigation4 = Litigation.create(lawyer_id: 1, caption: 'G vs. H', court: 'Ninth Circuit', status: 'Concluded')
litigation5 = Litigation.create(lawyer_id: 2, caption: 'I vs. J', court: 'Supreme Court', status: 'Concluded')
litigation6 = Litigation.create(lawyer_id: 3, caption: 'K vs. L', court: 'New York State Commercial', status: 'Concluded')
litigation7 = Litigation.create(lawyer_id: 2, caption: 'M vs. N', court: 'New York Criminal', status: 'Concluded')
litigation8 = Litigation.create(lawyer_id: 3, caption: 'O vs. P', court: 'Bankruptcy', status: 'Concluded')
litigation9 = Litigation.create(lawyer_id: 1, caption: 'Q vs. R', court: 'Delaware Chancery', status: 'Concluded')
litigation10 = Litigation.create(lawyer_id: 1, caption: 'S vs. T', court: 'Miami Dade County', status: 'Concluded')