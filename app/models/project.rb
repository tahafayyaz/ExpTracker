class Project < ApplicationRecord
  belongs_to :manager
  belongs_to :invoice
end
