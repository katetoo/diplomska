class AddTimestampsToReviewgenerics < ActiveRecord::Migration
  def change
    add_column(:reviewgenerics, :created_at, :datetime)
    add_column(:reviewgenerics, :updated_at, :datetime)
  end
end
