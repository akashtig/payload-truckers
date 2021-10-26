class User < ActiveRecord::Base
  belongs_to :company

  validates :company_id, presence: true
  validates :password, :presence => true
  validates :password, :length => { :in => 6..200}
  validates :name, :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }




  def password
    password_hash ? @password ||= BCrypt::Password.new(password_hash) : nil
  end

  def password=(new_password)
    logger.debug new_password.strip.length 
    if new_password.strip.length > 5
      self.password_hash = BCrypt::Password.create(new_password)
    end
  end

  def self.authenticate(email, test_password)
    user = User.find_by_email(email)
    if user && user.password == test_password
      user
    else
      nil
    end
  end
end
