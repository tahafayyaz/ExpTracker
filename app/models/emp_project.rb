class EmpProject < ApplicationRecord
  belongs_to :employee
  belongs_to :project
end
