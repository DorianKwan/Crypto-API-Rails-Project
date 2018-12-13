class FixUserRelation < ActiveRecord::Migration[5.1]
  def change
    remove_column :transactions, :users_id
    add_reference :transactions, :user, foreign_key: true
  end
end
