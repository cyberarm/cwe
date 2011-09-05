class Project < ActiveRecord::Base

 validates_presence_of :title, :app, :help, :requester
  validates_uniqueness_of :title
  
  extend FriendlyId
 friendly_id :title, :use => :slugged

end
