class User < ActiveRecord::Base

  validates :email, :uniqueness => true
  validates :fname, :email, :lname, :presence => true

end
