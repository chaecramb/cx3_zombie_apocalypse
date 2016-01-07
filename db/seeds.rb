# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..30).each do |n|
  Story.create(day: n, text: "storyline - day #{n}")
end

Character.create(name: 'Chae', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Keano', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Graeme V', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Peter', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Keith', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Kieran', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Craig', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Nevin', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Kat', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Neil', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Zsolt', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Ere', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Iwona', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Syed', status: 'alive', morale: 5, attack: 5)
Character.create(name: 'Simon', status: 'alive', morale: 5, attack: 5)
