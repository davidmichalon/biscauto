class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :demands, class_name: 'Booking', foreign_key: 'client_id'
  has_many :missions, class_name: 'Booking', foreign_key: 'expert_id'

  geocoded_by :address
  before_save :geocode, if: :address_changed?


  def self.find_for_facebook_oauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]  # Fake password for validation
        user.first_name = auth.info.first_name
        user.last_name = auth.info.last_name
        user.picture = auth.info.image
        user.token = auth.credentials.token
        user.token_expiry = Time.at(auth.credentials.expires_at)
      end
  end


  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
