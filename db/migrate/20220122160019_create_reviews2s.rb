class CreateReviews2s < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews2s do |t|
      t.string :content
      t.references :restaurant2s, null: false, foreign_key: true

      t.timestamps
    end
  end
end
