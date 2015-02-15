# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r = RecordsCreator.create(name: 'System', description: 'System records creator')
f = Fonds.create(title: 'F1', description: 'System fonds', records_creators: [r])
s = Series.create(title: 'F1/S1', description: 'System series', fonds: f)
