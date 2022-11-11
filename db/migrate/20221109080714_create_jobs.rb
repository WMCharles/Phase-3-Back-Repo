class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :image
      t.string :tag
      t.string :title
      t.string :location
      t.datetime :deadline
      t.integer :salary
      t.text :requirements
      t.text :description
      

      t.timestamps null: false
    end
  end
end
