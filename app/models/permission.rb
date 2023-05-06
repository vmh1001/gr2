class Permission < ApplicationRecord
  belongs_to :role_of_supervisor
  belongs_to :supervisor
end
