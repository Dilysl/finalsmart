class User < ActiveRecord::Base
	has_many :records
	has_many :goals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.best_savers(limit = 5)
  	joins(:records).select('users.*, sum(records.amount) as total_savings').group('users.id').order('total_savings desc').take(limit)
  end
end
