class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true, length: { minimum: 3 }
  validates :postcode, presence: true, numericality: true
  before_save do |profile|
    profile.first_name = profile.first_name.downcase.titleize
    profile.last_name = profile.last_name.downcase.titleize
    profile.address = profile.address.downcase.titleize
    profile.state = profile.state.downcase.upcase
    profile.suburb = profile.suburb.downcase.titleize
  end

  def full_name()
    [first_name, last_name].compact.join(' ')  
  end

end