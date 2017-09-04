class DropImgField < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :img
  end
end
