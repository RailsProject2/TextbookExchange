class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  @admin_password = ''
  @admin = false

  def make_admin
    if @admin_password == 'bestsiteever'
      @admin = true
      return true
    end
    return false
  end
end
