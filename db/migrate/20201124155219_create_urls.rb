class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.text :address
      t.text :shortened
      t.date :expiration
      t.date :autoexpiration

      t.timestamps
    end
  end
end
