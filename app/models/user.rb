class User < ActiveRecord::Base
  acts_as_authentic

  def role_symbols
    [:staff]
  end
end
