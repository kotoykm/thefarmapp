class Farmer < ApplicationRecord
    has_many :animals #Si está escrito en plural es que tiene muchos
    belongs_to :mainfarm #Singular pertenece solo a uno
end
