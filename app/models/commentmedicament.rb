class Commentmedicament < ActiveRecord::Base
  belongs_to :user
  belongs_to :medicament
end