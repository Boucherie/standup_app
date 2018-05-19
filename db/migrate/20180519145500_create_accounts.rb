class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.string :hash_id
      t.jsonb :settings

      t.timestamps
    end
    add_index :accounts, :hash_id
  end
end
