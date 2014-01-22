class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name_cn
      t.string :name_en
      t.string :longitude
      t.string :latitude
      t.boolean   :enabled
      t.boolean   :is_hot

      t.timestamps
    end
  end
end
