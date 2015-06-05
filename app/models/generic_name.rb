class GenericName < ActiveRecord::Base
  belongs_to :substitution
  has_many :medicaments, dependent: :destroy
end