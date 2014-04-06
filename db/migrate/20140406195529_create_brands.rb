class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string  :name
      t.string  :store
      t.integer :rating

      t.timestamps
    end
  end
end
