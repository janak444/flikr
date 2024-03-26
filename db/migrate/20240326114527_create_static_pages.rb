class CreateStaticPages < ActiveRecord::Migration[7.1]
  def change
    create_table :static_pages do |t|
      t.string :flickr_user_id

      t.timestamps
    end
  end
end
