class CreateArt < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title
      t.text :plot
      t.string :picture
      t.integer :duration

      t.timestamps null: false
    end
  end
end
