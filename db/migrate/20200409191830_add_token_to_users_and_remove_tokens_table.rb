class AddTokenToUsersAndRemoveTokensTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :tokens
    add_column :users, :token, :string
  end
end
