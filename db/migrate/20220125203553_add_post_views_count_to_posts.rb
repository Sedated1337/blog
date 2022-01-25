class AddPostViewsCountToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :post_views_count, :integer, default: 0
  end
end
