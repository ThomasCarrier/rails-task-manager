class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :target_date
      t.text :description

      t.timestamps
    end
  end
end
