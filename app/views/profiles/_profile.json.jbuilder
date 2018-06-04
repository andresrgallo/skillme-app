json.extract! profile, :id, :user_id, :avatar, :first_name, :last_name, :address, :suburb, :state, :postcode, :facebook, :created_at, :updated_at
json.url profile_url(profile, format: :json)
