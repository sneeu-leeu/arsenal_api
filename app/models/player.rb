class Player < ApplicationRecord

    validates :player_name, presence: true
    validates :position, presence: true
    validates :jersey_number, presence: true, numericality: { only_integer: true }, uniqueness: true
    validates :goals_scored, presence: true, numericality: { only_integer: true }

end
