class SongsController < ApplicationController

	def index
		@user = User.find(session[:user_id])
		@songs = Song.all
		@playlist = Playlist.all

	end

	def show
		@song = Song.find(params[:id])


	end

	def create
		song = Song.create(song_params)

		if song.valid?
			return redirect_to songs_path
		else	
			flash[:errors] = song.errors.full_messages
			return redirect_to songs_path
		end
	end

	private
		def song_params
			params.require(:song).permit(:artist, :title).merge(user: current_user)
		end

end
