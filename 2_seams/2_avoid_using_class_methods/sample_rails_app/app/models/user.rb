class User < ActiveRecord::Base
  def self.users_with_no_email
    where(:email => "")
  end
end
