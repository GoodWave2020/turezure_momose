class ChangeColumnDefaultNameToComments < ActiveRecord::Migration[5.2]
  def change
    change_column_default :comments, :name, '名無し'
  end
end
