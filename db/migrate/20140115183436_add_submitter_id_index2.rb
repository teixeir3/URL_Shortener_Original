class AddSubmitterIdIndex2 < ActiveRecord::Migration
  def change
    add_index :shortened_urls, :submitter_id
  end
end
