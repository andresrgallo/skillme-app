class Qualification < ApplicationRecord
    has_and_belongs_to_many :profiles
    before_save do |qualification|
        qualification.name = qualification.name.downcase.titleize
    end
end
