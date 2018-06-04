class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :avatar
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.string :facebook

      t.timestamps
    end
  end
end
