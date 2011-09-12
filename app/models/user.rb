class User < ActiveRecord::Base

extend FriendlyId
 friendly_id :username, :use => :slugged
#end

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :contactme, :username, :password, :password_confirmation, :remember_me
  
  validates_presence_of :username
  validates_uniqueness_of :username
end
