class User < ActiveRecord::Base
  enum role: [:user, :user_quimico , :user_comprador, :user_vendedor, :user_administrativo, :logistica, :vip_qualidade, :vip_producao, :vip_logistica, :admin , :mater ]
  
  
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
