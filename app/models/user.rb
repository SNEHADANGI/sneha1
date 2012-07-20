class User < ActiveRecord::Base
  attr_accessible :username, :email, :f_name,:l_name, :contact_no, :user_type, :full_name
   validates :f_name, :l_name, :email, :presence =>true
   validates :username, :presence =>true, 
                        :length =>{:maximum => 10}
   before_create :ensure_full_name_has_a_value
   protected
	def ensure_full_name_has_a_value
		if full_name.blank?
		     self.full_name=f_name+""+l_name 
		end
	end
   has_many :posts
end
