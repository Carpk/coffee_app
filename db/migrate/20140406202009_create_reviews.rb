class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :bean
      t.string     :user
      t.integer    :experiance
      t.string     :brew
      t.integer    :caffeine
      t.integer    :flavor
      t.integer    :rating
      t.text       :comment

      t.timestamps
    end
  end
end
