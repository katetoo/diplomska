class AddApproveToReviewgenerics < ActiveRecord::Migration
  def change
    add_column :reviewgenerics, :approve, :boolean, default: false
  end
end
