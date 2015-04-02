class MotivationController < ApplicationController
  def index
  	@youtube = "www.googleapis.com/youtube/v3/videos?id=7lCDEYXw3mM&key=AIzaSyBrm7vLw9aZy1XS_MDQ8HlEBsOaXWMdREs&part=snippet,contentDetails,statistics,status"
  	# API_YOUTUBE=AIzaSyBrm7vLw9aZy1XS_MDQ8HlEBsOaXWMdREs
  end
end
