puts "🌱 Seeding spices..."

# Seed your database here
artist1 = Artist.create(name: "Drake")
artist2 = Artist.create(name: "J. Cole")
artist3 = Artist.create(name: Faker::Name.name)

album1 = Album.create(name: 'Her Loss', image_url: 'https://res.cloudinary.com/dphlf7a8o/image/upload/v1668016652/her_loss_zlnjnz.jpg', artist_id: artist1.id)
album2 = Album.create(name: '2014 Forest Hills Drive', image_url: 'https://res.cloudinary.com/dphlf7a8o/image/upload/v1668016652/her_loss_zlnjnz.jpg', artist_id: artist1.id)


song1 = Song.create(name: "Rich Flex", artist_id: artist1.id, album_id: album1.id, iframe_url: 'woow')
song2 = Song.create(name: "Major Distribution", artist_id: artist1.id, album_id: album1.id, iframe_url: 'woow')
song3 = Song.create(name: "On BS", artist_id: artist1.id, album_id: album1.id, iframe_url: 'woow')
song4 = Song.create(name: "BackOutsideBoyz", artist_id: artist1.id, album_id: album1.id, iframe_url: 'woow')
song5 = Song.create(name: "Privileged Rappers", artist_id: artist1.id, album_id: album1.id, iframe_url: 'woow')
song6 = Song.create(name: 'January 28th', artist_id: artist2.id, album_id: album2.id, iframe_url: 'woow')
song7 = Song.create(name: 'Wet Dreamz', artist_id: artist2.id, album_id: album2.id, iframe_url: 'woow')
song8 = Song.create(name: "03' Adolescence", artist_id: artist2.id, album_id: album2.id, iframe_url: 'woow')
song9 = Song.create(name: "Fire Squad", artist_id: artist2.id, album_id: album2.id, iframe_url: 'woow')
song10 = Song.create(name: "G.O.M.D", artist_id: artist2.id, album_id: album2.id, iframe_url: 'woow')


user1 = User.create()
user2
user3


puts "✅ Done seeding!"
