class Permission < ActiveRecord::Base
  attr_accessible :article, :permission, :role, :role_id, :user
end
