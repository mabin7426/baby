class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.boolean :experience
      t.string :when
      t.integer :howlong
      t.integer :phone
      t.string :notes

      t.timestamps
    end
  end
end
