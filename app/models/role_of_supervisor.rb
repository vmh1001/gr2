class RoleOfSupervisor < ApplicationRecord
  has_many :permission
  has_many :supervisor
end
