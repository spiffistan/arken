# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r = FondsCreator.create(name: 'System', description: 'System records creator')
f = Fonds.create(title: 'F1', description: 'System fonds', fonds_creators: [r])
s = Series.create(title: 'F1/S1', description: 'System series', fonds: f)

cs = ClassificationSystem.create(title: 'CS1', description: 'Classification system')
c = Classification.create(classification_system: cs)

1.upto(50) do |i|
  MeetingFiling.create(classification: c, series: s, identifier: "15/#{i}", title: "Important filing #{i}")
end
