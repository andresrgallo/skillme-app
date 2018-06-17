class CreateJoinTableQualificationProfile < ActiveRecord::Migration[5.1]
  def change
    create_join_table :qualifications, :profiles do |t|
      # t.index [:qualification_id, :profile_id]
      # t.index [:profile_id, :qualification_id]
    end
  end
end
