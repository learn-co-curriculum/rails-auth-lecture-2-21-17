class User < ApplicationRecord
    has_secure_password # hashing password, checking presence of password with AR validations, authenticate user's password ( user.authenticate(password) ) user.password_digest = "43234234i2u4$$$q32io1o$,rdhakjlahrkjlahrajrhrale" params[:password] = "password"

    validates :username, presence: true 
    validates :username, uniqueness: true 

end
