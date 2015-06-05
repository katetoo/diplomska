class Substitution < ActiveRecord::Base
  belongs_to :subgroup
  has_many :generic_names, dependent: :destroy
end