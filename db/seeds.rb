# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Wolf.create(name: "Blood Demon", image: "https://pbs.twimg.com/profile_images/378800000262587313/ded5133de40ef2e2f4e0815aef640c2b.jpeg", description: "Dashing and refined")
Wolf.create(name: "Scarlet Storm", image: "http://images.8tracks.com/cover/i/002/562/682/tumblr_n5gac61Tnm1r7jrkpo1_500-7525.png?rect=0,100,500,500&q=98&fm=jpg&fit=max", description: "Im a half-breed")
Wolf.create(name: "Alpha Rage", image: "https://warawdotorg.files.wordpress.com/2014/11/cropped-stylized_wolf-2.jpg", description: "I'm a bitter") 
Wolf.create(name: "Wild Fire", image: "http://vignette2.wikia.nocookie.net/animal-jam-clans-1/images/1/10/Wolf_face_flame.jpg/revision/latest?cb=20151013225949", description: "Don't make me mad")
Wolf.create(name: "Rogue Rain", image: "http://www.attitudeholland.nl/_clientfiles/King/17000114%20Spiral%20Direct/medium2/114013483-2.jpg", description: "Yin Yang")
Wolf.create(name: "Big Bad", image: "http://img05.deviantart.net/c8dd/i/2006/256/6/1/wolf_pup___digital__by_manicsfan.jpg", description: "Im super cute")

Howl.create(text: "I might be little, but my bit hurts", image: "https://s-media-cache-ak0.pinimg.com/736x/88/57/6c/88576cf20ba1ef168838e3739abfff23.jpg", wolf_id: Wolf.last )
Howl.create(text: "I am loooking for love in my life", wolf_id: Wolf.first)