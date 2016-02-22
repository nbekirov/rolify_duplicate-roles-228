class User < ActiveRecord::Base
  rolify
  belongs_to :organisation
end
