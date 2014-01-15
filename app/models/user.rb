class User < ActiveRecord::Base

  validates :email, :uniqueness => true
  validates :fname, :email, :lname, :presence => true

  has_many(
    :shortenedurls,
    :class_name => "ShortenedUrl",
    :foreign_key => :submitter_id,
    :primary_key => :id
  )

  has_many(
  :visits,
  :class_name => "Visit",
  :foreign_key => :visitor_id,
  :primary_key => :id
  )

  has_many :visited_urls, :through => :visits, :source => :visited_url

end
