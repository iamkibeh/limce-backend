puts "🌱 Seeding..."

Artist.destroy_all
Album.destroy_all
Song.destroy_all
Review.destroy_all
User.destroy_all


# Seed your database here
artist1 = Artist.create(name: "Drake")
artist2 = Artist.create(name: "J. Cole")

album1 = Album.create(name: 'Her Loss', image_url: 'https://res.cloudinary.com/dphlf7a8o/image/upload/v1668016652/her_loss_zlnjnz.jpg', artist_id: artist1.id)
album2 = Album.create(name: '2014 Forest Hills Drive', image_url: 'https://res.cloudinary.com/dphlf7a8o/image/upload/v1668016652/her_loss_zlnjnz.jpg', artist_id: artist2.id)


song1 = Song.create(name: "Rich Flex", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/I4DjHHVHWAE', likes: 5)
song2 = Song.create(name: "Major Distribution", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/LfPYX03_4rA', likes: 10)
song3 = Song.create(name: "On BS", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/PNFZHl1H8zY', likes: 8)
song4 = Song.create(name: "BackOutsideBoyz", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/srlxBpbKz70', likes:6)
song5 = Song.create(name: "Privileged Rappers", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/lF3K70KR5Xk', likes:7)
song6 = Song.create(name: 'January 28th', artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/UZwyUC4gloM', likes:10)
song7 = Song.create(name: 'Wet Dreamz', artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/eCGV26aj-mM', likes:15)
song8 = Song.create(name: "03' Adolescence", artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/_L_s5_LT3bM', likes: 1)
song9 = Song.create(name: "Fire Squad", artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/HCURqfqL8sI', likes: 6)
song10 = Song.create(name: "G.O.M.D", artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/vHU6ZRQJ50Q', likes:15)


user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

review1 = Review.create(comment: "This is trash", song_id: song1.id, user_id: user1.id )
review2 = Review.create(comment: "Drake is the goat", song_id: song3.id, user_id: user2.id)
review3 = Review.create(comment: "J.cole rhymes deep", song_id: song7.id, user_id: user3.id)
review4 = Review.create(comment: "This is why i love cole", song_id: song9.id, user_id: user1.id)

puts "✅ Done seeding!"
