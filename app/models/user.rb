class User < ActiveRecord::Base
 #Add save handlers for formatting data
 before_create :create_remember_token
 before_save :normalize_fields


  #Validates name:
  validates :name,
    presence: true,
    length: {maximum: 50}
  # this will refuse to save if the the name is blank and has to be less than 50 characters

  #Validates email:

  validates  :email,
    presence: true,
    uniqueness: { case_sensitive: false},
    format: {with: /[^@]+@[^@]+/}


  #validates pasword length
  validates :password,
    length: { minimum: 8 }

  #Secure password features:
  has_secure_password    #using bcrypt





  #create a new remeber token for the user
  def self.new_remember_token #using a class method
    SecureRandom.urlsafe_base64   #this is using the securerandom module of rails
  end

  def self.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end


  private
  #Create a new sessions token for the user.
  def create_remember_token
    remember_token = User.hash(User.new_remember_token)    #setting the remember token from the above

  end
  #Normalize fields for consistancy
  def normalize_fields
    self.email.downcase!
  end
end



