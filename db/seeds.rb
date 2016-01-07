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

Character.create(name: 'Chae', status: 'alive', morale: 6, attack: 3)
Character.create(name: 'Keano', status: 'alive', morale: 6, attack: 1)
Character.create(name: 'Graeme V', status: 'alive', morale: 6, attack: 0)
Character.create(name: 'Peter', status: 'alive', morale: 6, attack: 2)
Character.create(name: 'Keith', status: 'alive', morale: 6, attack: 0)
Character.create(name: 'Kieran', status: 'alive', morale: 6, attack: 1)
Character.create(name: 'Craig', status: 'alive', morale: 6, attack: 1)
Character.create(name: 'Nevin', status: 'alive', morale: 6, attack: 2)
Character.create(name: 'Kat', status: 'alive', morale: 6, attack: 2)
Character.create(name: 'Neil', status: 'alive', morale: 8, attack: 1)
Character.create(name: 'Zsolt', status: 'alive', morale: 7, attack: 3)
Character.create(name: 'Ere', status: 'alive', morale: 6, attack: 1)
Character.create(name: 'Iwona', status: 'alive', morale: 6, attack: 3)
Character.create(name: 'Syed', status: 'alive', morale: 8, attack: 0)
Character.create(name: 'Simon', status: 'alive', morale: 5, attack: 1)
Character.create(name: 'Jay', status: 'alive', morale: 7, attack: 3)
Character.create(name: 'Val', status: 'alive', morale: 6, attack: 2)
Character.create(name: 'Kate', status: 'alive', morale: 5, attack: 1)
Character.create(name: 'Sandy', status: 'alive', morale: 5, attack: 1)
Character.create(name: 'Rick', status: 'alive', morale: 8, attack: 0)
Character.create(name: 'Tony', status: 'alive', morale: 5, attack: 3)
Character.create(name: 'Susie', status: 'alive', morale: 6, attack: 2)
Character.create(name: 'Leigh-Anne', status: 'alive', morale: 5, attack: 0)
Character.create(name: 'Michael', status: 'alive', morale: 10, attack: 15)

Event.create(setting: 'Zombies burst in front door', event_type: 1, triggered: 0, success: 'character won', failure: 'character died')
Event.create(setting: 'Zombies burst in back door', event_type: 1, triggered: 0, success: 'character won', failure: 'character died')

Ability.create(text: 'Keano takes a line', name: 'keano')