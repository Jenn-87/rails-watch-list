class AddForeignKeystoBookmark < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :bookmarks, :movies
    add_foreign_key :bookmarks, :lists
  end
end
