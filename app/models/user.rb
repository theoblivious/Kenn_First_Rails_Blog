class User < ActiveRecord::Base

  validates :name,
    presence: true,
    length: { maximum: 50 }


validates :email,
presence: true,
uniqueness: {case_sensitive:false },
format: { with: /[^@]+@[^@]+/ }

validates :password,
length: {minimum: 8}

has_secure_password


  def self.new_remember_token
    SecureRandom.urlsafe_base64

  end
  def self.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
end
