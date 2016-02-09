class CreateWork < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :plot
      t.string :picture
      t.date :realease_date

      t.timestamps null: false
    end
  end
end
