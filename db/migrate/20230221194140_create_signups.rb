class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.belongs_to :camper, null: false, foreign_key: true
      t.belongs_to :activity, null: false, foreign_key: true
      t.string :time
      
      t.timestamps
    end
  end
end
