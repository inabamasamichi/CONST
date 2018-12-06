class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :description
      t.string :image
      t.string :construction_work_contents
      t.string :occupation
      t.string :drawing
      t.string :construction_site_picture
      t.string :address
      t.string :suitable_time
      t.integer :budget
      t.string :important_think
      t.timestamps
    end
  end
end
