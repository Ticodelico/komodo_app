class Suscription < ApplicationRecord
    enum :name, [ :classic, :gold, :platinum, :Signature ]

    has_many :restaurants, dependent: :restrict_with_exception
end
