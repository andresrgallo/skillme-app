class AddExpertiseToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :expertise, :text
  end
end
