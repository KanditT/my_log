class RemoveRepeatPasswordFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :repeat_password, :string
  end
end
