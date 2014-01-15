class CreateShortenedUrlTable < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
      t.integer :submitter_id
      t.string :short_url
      t.text :long_url

      t.timestamps
    end
  end
end
