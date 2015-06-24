class AddTimestampsToReviewmeds < ActiveRecord::Migration
  def change
    add_column(:reviewmeds, :created_at, :datetime)
    add_column(:reviewmeds, :updated_at, :datetime)
  end
end
