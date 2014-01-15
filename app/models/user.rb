class User < ActiveRecord::Base

  validates :email, :uniqueness => true
  validates :fname, :email, :lname, :presence => true

  has_many(
  :shortenedurls,
  :class_name => "ShortenedUrl",
  :foreign_key => :submitter_id,
  :primary_key => :id
  )
end
