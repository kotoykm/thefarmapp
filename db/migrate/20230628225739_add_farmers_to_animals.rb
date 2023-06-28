class AddFarmersToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_reference :animals, :farmer, null: false, foreign_key: true #FUNCIONO!!!
    #Se utilizó este comando: rails g migration AddFarmersToAnimals farmer:references
  end
end
