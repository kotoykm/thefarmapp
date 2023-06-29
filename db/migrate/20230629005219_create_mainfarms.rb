class CreateMainfarms < ActiveRecord::Migration[7.0]
  def change
    create_table :mainfarms do |t|
      t.string :name

      t.timestamps
    end
  end
end
