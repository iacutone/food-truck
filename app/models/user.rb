class User
	
	EMAIL_REGEXP = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	
  include Mongoid::Document
  include Mongoid::Timestamps
  # include ActiveModel::ForbiddenAttributesProtection
  
  field :name,               type: String
  field :email,              type: String
  field :password_digest,    type: String
  
  validates :email,     :presence   => true,
                        :uniqueness => true,
                        :format => {
                          :with => User::EMAIL_REGEXP
                        }
                        
  validates_presence_of :name                      
  
  def self.permitted_params
  	[
  		:name,
  		:email,
  		:password_digest
  	]
  end
  
end
