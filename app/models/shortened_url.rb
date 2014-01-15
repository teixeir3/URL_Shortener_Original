class ShortenedUrl < ActiveRecord::Base

  validates :short_url, :uniqueness => true
  validates :submitter_id, :short_url, :long_url, :presence => true

  belongs_to(
    :user,
    :class_name => "User",
    :foreign_key => :submitter_id,
    :primary_key => :id
  )
end