class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mobile
      t.string :sign_key
      t.string :version
      t.string :device_token
      t.string :platform
      t.string :client_code

      t.timestamps
    end
  end
end
