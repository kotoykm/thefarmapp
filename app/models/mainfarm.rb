class Mainfarm < ApplicationRecord
    has_many :farmers #En plural tiene muchos

    accepts_nested_attributes_for :farmers, allow_destroy: true #Con esto pueden eliminarse en cascada!!
end
