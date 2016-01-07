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

Character.delete_all
Character.create(name: 'Chae', status: 'alive', morale: 6, attack: 3, opener1: 'I think I might have just proved the existence of the Big Bang guys.', opener2: 'Is there any way we can monetize these zombies?', reply1: 'No, you are wrong.', reply2: 'I’m l33t haxor', reply3: 'When I rule the world, you can be my minions.', reply4: '*looks and nods, deeply*')
Character.create(name: 'Keano', status: 'alive', morale: 6, attack: 1, opener1: 'I need to get so blasted my eyes fall out of my face..', opener2: 'Things that used to make you vomit barely give you a hard-on anymore..', reply1: 'Nah, crack is much better.', reply2: 'Yeah, that Zombie is well fuckable.', reply3: 'Gangrape? Hmmm', reply4: 'I think “graped” is the expression')
Character.create(name: 'Graeme V', status: 'alive', morale: 6, attack: 0, opener1: 'Does anyone else miss John Cena?', opener2: 'I could probably wrestle my way out of this?', reply1: 'Yeah you do', reply2: 'Go and suck a field of dicks..', reply3: 'I will set you on fire..', reply4: 'No!')
Character.create(name: 'Peter', status: 'alive', morale: 6, attack: 2, opener1: 'This one time, when I was with this girl...', opener2: 'You guys are idiots.', reply1: 'You are a fucking imbecile', reply2: 'Were you always a dickhead?', reply3: 'We need more women.', reply4: 'We need less men.')
Character.create(name: 'Keith', status: 'alive', morale: 6, attack: 0, opener1: 'I need my TOOOOOOLS!!!', opener2: 'Anyone got a spare fag? I need that itch scratched..', reply1: 'No I have always been this awesome..', reply2: 'I would like to meet that Zombie in a dark alley ;)', reply3: 'Yes I would..', reply4: 'No, SHE IS MINE!!')
Character.create(name: 'Kieran', status: 'alive', morale: 6, attack: 1, opener1: 'The Chinese call this “the cream o sum yung guy”', opener2: 'If that zombie mentions css one more time I’m going to gouge his eyes out.', reply1: 'I’m too sweaty to do that - my flanks are soaking down to my ass crack”', reply2: 'My fiance thinks that is a type of starter.', reply3: 'I might have a meltdown - I forgot to take my medication', reply4: 'I had a dream last night about this exact scenario - I might be psychic.')
Character.create(name: 'Nevin', status: 'alive', morale: 6, attack: 1, opener1: 'Pete’s a gimp', opener2: 'This is a pile of horse shit', reply1: 'No, we had no potatoes left!', reply2: 'Dope', reply3: 'That’s a pile of horse shit', reply4: 'Listen Hitler’s Wet Dream - you just settle down')
Character.create(name: 'Craig', status: 'alive', morale: 6, attack: 2, opener1: 'I managed to do all of that in 5 minutes using only 4 characters and my pinkies', opener2: 'If we get out of here alive I’m moving to Finland', reply1: 'Oh No - Not a Finland!', reply2: 'Just because I dress like Death doesn’t mean I actually want to die.', reply3: 'The discombooberation valve appears to have been dislodged from the trunjeon flange pin, don’t worry - I’ll hack the quantum api and circumvent the problem.', reply4: 'the traffic was a nightmare this morning.')
Character.create(name: 'Kat', status: 'alive', morale: 6, attack: 2, opener1: 'I could kill them with my cat-like reflexes?', opener2: 'We need a cat.', reply1: 'Yeah but cats?', reply2: 'Yeah but cats?', reply3: 'Yeah but cats?', reply4: 'Yeah but cats?')
Character.create(name: 'Neil', status: 'alive', morale: 8, attack: 1, opener1: 'Have you guys seen One-Punch Man?', opener2: 'Guys, I just bought 10 games on Steam for a tenner.', reply1: '*thumbs up*', reply2: 'Yes, I have ears..', reply3: 'Woooooooo', reply4: 'Sirius?')
Character.create(name: 'Zsolt', status: 'alive', morale: 7, attack: 3, opener1: 'Guys, I fought a squirrel and a St Bernard once. Im pretty sure I can handle some zombies.', opener2: 'Nothing catches my eastern european-ness (is there such a word?) as much as some russian ska-core.', reply1: 'How about my battle axe though?', reply2: 'My long hair makes me more manly than you, so shut the fuck up.', reply3: 'Is this how you little people live your lives?', reply4: 'That reminds me of when I was in a pirate rock band.')
Character.create(name: 'Ere', status: 'alive', morale: 6, attack: 1, opener1: 'If we don’t get out of here I’m gonna use a zombie as a weapon and fight my way out of here', opener2: '', reply1: '…….what?', reply2: '', reply3: '', reply4: '')
Character.create(name: 'Iwona', status: 'alive', morale: 6, attack: 3, opener1: 'I didn’t get to sleep until 5pm last night and had to get the bus at 5.04.', opener2: 'If I get drunk and fall over - just leave me giggling in a pool of booze.', reply1: 'Shut Up!', reply2: 'Rick - can you come and have a look at this please?', reply3: 'Sorry guys I think I’m ill', reply4: 'My CSS skills dont help here!')
Character.create(name: 'Syed', status: 'alive', morale: 8, attack: 0, opener1: 'Choclaaaaaaate!', opener2: 'Choclaaaaaate!', reply1: 'Choclaaaaaaate!', reply2: 'Level-up!', reply3: 'Choclaaaaaaaaate!', reply4: 'Choclaaaaaaate!')
Character.create(name: 'Simon', status: 'alive', morale: 5, attack: 1, opener1: 'I want to kill you all.', opener2: 'Would a knife or a chainsaw be more fun?', reply1: 'No, now go and die.', reply2: 'Trololololol lololol lololol', reply3: 'I like you. I will kill you last.', reply4: 'I don’t like you. I will kill you last.')
Character.create(name: 'Jay', status: 'alive', morale: 7, attack: 3, opener1: 'I shouldnt even be working here, I could be anywhere!', opener2: 'I can turn up to work on time!', reply1: 'Lets get fucked!', reply2: 'Im your teacher, respect me!', reply3: 'Cohort 2 sucks, I wish I was with cohort 1', reply4: 'I dont really miss cohort 2')
Character.create(name: 'Val', status: 'alive', morale: 6, attack: 2, opener1: 'I dont really miss cohort 2..', opener2: 'Pokemon?', reply1: 'Lets use magic!', reply2: 'Are zombies weak against fire or water?', reply3: 'Give me your support, and I shall take us higher than ever before.', reply4: 'Do you even Hearthstone?')
Character.create(name: 'Kate', status: 'alive', morale: 5, attack: 1, opener1: 'I think those Zombies look sad', opener2: 'Why did this happen to us?!', reply1: 'That’s a bit inappropriate guys.', reply2: 'That’s a bit inappropriate guys.', reply3: 'Keep it civil..', reply4: 'You can’t say that!')
Character.create(name: 'Sandy', status: 'alive', morale: 5, attack: 1, opener1: '01001001 00100000 01101100 01101111 01110110 01100101 00100000 01110011 01101000 01100101 01100101 01110000', opener2: '01011010 01101111 01101101 01100010 01101001 01100101 01110011 00111111 00100001', reply1: '01001110 01101111 00101110', reply2: '01011001 01100101 01110011 00101100 00100000 01101100 01100101 01110100 01110011 00100000 01101000 01100001 01110110 01100101 00100000 01110011 01100101 01111000 00100001', reply3: '01010011 01101111 01101101 01100101 01101111 01101110 01100101 00100000 01101011 01100101 01100101 01110000 01110011 00100000 01110100 01101111 01110101 01100011 01101000 01101001 01101110 01100111 00100000 01101101 01100101 00101110 ', reply4: '01000111 01110101 01111001 01110011 00101100 00100000 01001001 00100000 01101010 01110101 01110011 01110100 00100000 01110111 01100001 01101110 01110100 00100000 01101001 01110010 01101110 00100000 01100010 01110010 01110101')
Character.create(name: 'Rick', status: 'alive', morale: 8, attack: 0, opener1: 'Thats pretty cool', opener2: 'Awesome', reply1: 'Thats pretty cool', reply2: 'Thats pretty cool', reply3: 'Thats pretty cool', reply4: 'That, is not cool.')
Character.create(name: 'Tony', status: 'alive', morale: 5, attack: 3, opener1: 'This one time in London…', opener2: 'I’m so proud of you guys - you’re like my children', reply1: 'Yeah, that’s nothing because this one time in London..', reply2: 'Caipairhinia', reply3: 'Peter made me cry..', reply4: 'I love you guys so much, when we get out of this you are all invited to my flat!')
Character.create(name: 'Susie', status: 'alive', morale: 6, attack: 2, opener1: 'You wouldnt want to meet me down a dark alley', opener2: 'Can I draw on the barricade?', reply1: 'I’ve literally never spoken to you in my life', reply2: 'Does the blood on my top match my lipstick?', reply3: 'I might be blond but Im not stoopid!', reply4: 'I can’t run away - I’m not wearing a bra!')
Character.create(name: 'Leigh-Anne', status: 'alive', morale: 5, attack: 0, opener1: 'You’s are all my weans.', opener2: 'I don’t believe in zombies.', reply1: 'what’s that?', reply2: 'what do you mean?', reply3: 'I don’t get it', reply4: 'just like planets, that doesn’t exist.')

Event.create(setting: 'Zombies burst in front door', event_type: 1, triggered: 0, success: 'character won', failure: 'character died')
Event.create(setting: 'Zombies burst in back door', event_type: 1, triggered: 0, success: 'character won', failure: 'character died')


Ability.create(text: 'Keano takes a line', name: 'keano', character_id: 2, stat: "attack", boost: 5, days_to_cooldown: 3)
