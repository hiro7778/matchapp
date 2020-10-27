class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text          :meet,          null: false
      t.text          :place
      t.integer       :area_id,       null: false
      t.date          :date,          null: false
      t.integer       :count,         null: false
      t.text          :language,      null: false
      t.timestamps
    end
  end
end
