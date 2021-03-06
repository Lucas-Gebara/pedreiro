class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.date :start_time
      t.date :end_time
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
