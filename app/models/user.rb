class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_uniqueness_of :email
  after_create :create_account
  
  private
  
  def create_account
    account = Account.new(:email => email)
    account.save!
  end
end
