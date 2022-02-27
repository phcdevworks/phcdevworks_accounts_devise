class AddUserinfoToUsers < ActiveRecord::Migration[7.0]
  def change

    add_column :phcdevworks_accounts_users, :firstname, :string
    add_column :phcdevworks_accounts_users, :lastname, :string
    add_column :phcdevworks_accounts_users, :username, :string
    add_column :phcdevworks_accounts_users, :org_id, :string

    add_index :phcdevworks_accounts_users, :firstname
    add_index :phcdevworks_accounts_users, :lastname
    add_index :phcdevworks_accounts_users, :username, unique: true
    add_index :phcdevworks_accounts_users, :org_id, unique: true

  end
end
