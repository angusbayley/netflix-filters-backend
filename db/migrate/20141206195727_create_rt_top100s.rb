class CreateRtTop100s < ActiveRecord::Migration
  def change
    create_table :rt_top100s do |t|
      t.integer :position
      t.string :name

      t.timestamps
    end
  end
end
