class User < ActiveRecord::Base

  has_many :workouts
  has_many :routines, through: :workouts
  has_many :posts
  has_many :comments

	 def self.from_omniauth(auth)
    user = User.find_or_create_by(provider: auth.provider, uid: auth.uid)
    user.name = auth.info.name
    user.email = auth.info.email

    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)

    user.save!

    user
  end

  def facebook
    @facebook ||= Koala::Facebook::API.new(oauth_token)
  end

end
