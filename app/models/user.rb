class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    has_many :demands, class_name: 'Booking', foreign_key: 'client_id'
    has_many :missions, class_name: 'Booking', foreign_key: 'expert_id'


end
