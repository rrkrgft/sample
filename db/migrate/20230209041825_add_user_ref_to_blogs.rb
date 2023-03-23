class AddUserRefToBlogs < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM blogs;'
    add_reference :blogs, :user, null: false, index: true, foreign_key: true
  end

  def down
    remove_reference :blogs, :user, index: true, foreign_key: true
  end
end
