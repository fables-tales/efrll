class EmailMatcher
  def ===(other)
    other.split("@").count == 2 &&
      other.split("@").last.include?(".")
  end
end
class ValidatesEmails
  def initialize(email)
    @email = email
  end

  def valid?
    email_matcher === email
  end

  protected

  attr_reader :email

  def email_matcher
    EmailMatcher.new
  end
end

p ValidatesEmails.new("bob@example.com").valid?
