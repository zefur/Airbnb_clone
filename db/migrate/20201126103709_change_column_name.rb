class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :reviews, :background
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
