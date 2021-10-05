class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.references :library, foreign_key: true
      t.references :collector, foreign_key: true
      t.references :retailer, foreign_key: true
      t.references :university, foreign_key: true

      t.timestamps
    end
  end
end
