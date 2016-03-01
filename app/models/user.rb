class User < ActiveRecord::Base
  rolify
  belongs_to :organisation

  after_create :set_default_role

  private

  def set_default_role
    self.add_role :default
  end
end
