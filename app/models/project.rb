class Project < ActiveRecord::Base
#belongs_to :user
 validates_presence_of :title, :app, :help, :requester
  validates_uniqueness_of :title
  
  extend FriendlyId
 friendly_id :title, :use => :slugged

end
