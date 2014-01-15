class Visit < ActiveRecord::Base
  belongs_to(
    :visitor,
    :class => "User",
    :foreign_key => :visitor_id,
    :primary_key => :id
  )

  belongs_to(
    :url,
    :class => "ShortenedUrl",
    :foreign_key => :url_id,
    :primary_key => :id
  )
end
