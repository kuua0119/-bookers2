class FixGroupsOwnerReference < ActiveRecord::Migration[6.1]
  def change
    remove_reference :groups, :owner, foreign_key: true
    add_reference :groups, :owner, null: false, foreign_key: { to_table: :users }
  end
end
