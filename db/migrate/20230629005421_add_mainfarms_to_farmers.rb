class AddMainfarmsToFarmers < ActiveRecord::Migration[7.0]
  def change
    add_reference :farmers, :mainfarm, null: false, foreign_key: true
  end
end
