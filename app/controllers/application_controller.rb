class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here ywywyw
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/songs' do
    songs = Song.all
    songs.to_json
  end

  get '/songs/:id' do
    song = Song.find(params[:id])
    song.to_json
  end

  get '/albums' do
    albums = Album.all
    albums.to_json
  end

  get '/albums/:id' do
    album = Album.find(params[:id])
    album.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end
end
