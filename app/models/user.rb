class User < ActiveRecord::Base
  belongs_to :organisation
  rolify

  after_create :set_default_role

  private

  def set_default_role
    self.add_role :default
  end
end
