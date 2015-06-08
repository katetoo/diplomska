class GenericName < ActiveRecord::Base
  belongs_to :substitution
  has_many :medicaments, dependent: :destroy
  has_many :reviewgenerics
  
  validates :genericko_ime, presence: true
  validates :substitution_id, presence: true
end