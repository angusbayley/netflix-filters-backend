class CreateTop250s < ActiveRecord::Migration
  def change
    create_table :top250s do |t|
      t.integer :position
      t.string :name

      t.timestamps
    end
  end
end
