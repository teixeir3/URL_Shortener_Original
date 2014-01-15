class ShortenedUrl < ActiveRecord::Base

  validates :short_url, :uniqueness => true
  validates :submitter_id, :short_url, :long_url, :presence => true

  belongs_to(
    :user,
    :class_name => "User",
    :foreign_key => :submitter_id,
    :primary_key => :id
  )

  has_many(
    :visits,
    :class_name => "Visit",
    :foreign_key => :url_id,
    :primary_key => :id
  )

  has_many :visitors, :through => :visits, :source => :visitor, :uniq => true

  def self.random_code
    short_url = nil
    until short_url && ShortenedUrl.find_by_short_url(short_url).nil?
      short_url = SecureRandom::urlsafe_base64
    end

    short_url
  end

  def self.create_for_user_and_long_url!(user, long_url)
    new_entry = ShortenedUrl.new

    new_entry.short_url = ShortenedUrl.random_code
    new_entry.long_url = long_url
    new_entry.submitter_id = user.id

    new_entry.save!
  end

end