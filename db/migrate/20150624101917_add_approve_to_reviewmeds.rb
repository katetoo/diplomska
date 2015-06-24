class AddApproveToReviewmeds < ActiveRecord::Migration
  def change
    add_column :reviewmeds, :approve, :boolean, default: false
  end
end
