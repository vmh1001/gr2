class Supervisor < ApplicationRecord
  belongs_to :role_of_supervisor
  has_many :permission
end
