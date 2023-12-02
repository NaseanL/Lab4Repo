#email:string
#password_digest:string
#
#
#password:string virtual
#password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: {with: /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*(\+[a-z0-9-]+)?@[a-z0-9-]+(\.[a-z0-9-]+)*\Z/, message: "must be a valid email address"}
end
