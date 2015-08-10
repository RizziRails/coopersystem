class User < ActiveRecord::Base
  enum role: [:user, :user_quimico , :user_comprador, :user_vendedor, :user_administrativo, :vip_qual, :vip_prod, :vip_log, :vip, :admin , :master ]
  
  
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
