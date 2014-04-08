class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.references :brand
      t.string     :name
      t.string     :roast
      t.text       :description

      t.timestamps
    end
  end
end
