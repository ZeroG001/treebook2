class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :statuses

         #setup accessible (or protected) attributes for your model
         # attr_accessible :email, :password, :password_confirmation, :remember_me
    
    def full_name 
    	first_name + " " + last_name
    end

  #This is a ruby validation
validates :first_name, presence: true
validates :last_name, presence: true
validates :profile_name, presence: true,
                      uniqueness: true, 
                      format: {
                        with: /\A[a-zA-Z0-9_-]+\z/,
                        message: "You have entered spaces"
                      }



#end
    
end
