class Farmer < ApplicationRecord
    has_many :animals, dependent: :destroy #Si está escrito en plural es que tiene muchos, noo se van a morir los animales pipipi
    belongs_to :mainfarm #Singular pertenece solo a uno
end
