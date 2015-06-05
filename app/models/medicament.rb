class Medicament < ActiveRecord::Base
    belongs_to :producer
    belongs_to :generic_name
end
