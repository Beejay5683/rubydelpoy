class PlaylistsController < ApplicationController

	def create
		add = Playlist.create(play_params)

		if add.valid?
			flash[:message] = 'Song successfully added to playlist!'
			return redirect_to songs_path
		else	
			flash[:errors] = add.errors.full_messages
			return redirect_to songs_path
		end
	end

	private
	def play_params
		params.require(:play).permit(:song_id).merge(user_id: session[:user_id])
	end

end
