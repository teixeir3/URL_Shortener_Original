class CreateShortenedUrlTable < ActiveRecord::Migration
  def change
    add_column :shortened_urls, :submitter_id, :integer
    add_column :shortened_urls, :short_url, :string
    add_column :shortened_urls, :long_url, :text
  end
end
