class Truck < ApplicationRecord
    belongs_to :company

    validates :name, presence: true
    validates :truck_type, :presence => true
    validates :year,:presence => true
    validates :capacity, :presence => true

end
