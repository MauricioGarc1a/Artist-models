class CreateGenre < ActiveRecord::Migration
  def change
    create_table :genres do |t|

      t.timestamps null: false
    end
  end
end
