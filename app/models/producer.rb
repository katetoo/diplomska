class Producer < ActiveRecord::Base
  has_many :medicaments, dependent: :destroy
end
