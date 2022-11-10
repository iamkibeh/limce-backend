class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here 

  post "/reviews" do
    user = User.find_or_create_by(name: params[:user_name])
    song = Song.find(params[:review_data][:song_id])
    review = Review.create(comment: params[:review_data][:comment], user_id: user.id, song_id: song.id)
    review.to_json
  end

end
