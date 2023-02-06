# email:string 
# password_digest:string 
#
# password:string virtual
# password_confirmation:string virtual 
class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets

  has_secure_password
  
  validates :email, presence: true, format: {with: /\w+@\w+\.{1}[a-zA-Z]{2,}/, msg: "the email must be valid"}
  validates :password, presence: true
end
