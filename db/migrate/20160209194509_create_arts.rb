class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.String :title
      t.text :plot
      t.string :picture
      t.integer :duration

      t.timestamps null: false
    end
  end
end
