class Mainfarm < ApplicationRecord
    has_many :farmers, dependent: :destroy #En plural tiene muchos. Con el dependent autorizamos la destrucción

    accepts_nested_attributes_for :farmers, allow_destroy: true #Con esto pueden eliminarse en cascada!!
end
