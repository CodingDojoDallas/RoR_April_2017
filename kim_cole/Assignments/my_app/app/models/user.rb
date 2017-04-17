class User < ActiveRecord::Base
	has_many :messages

	# belongs_to :user_id
	has_one :address

	# def user
	# 	Message.find_by_sql("SELECT * FROM users WHERE users.id = #{self.user_id}")
	# end

	# def messages
	# 	User.find_by_sql("SELECT * FROM messages WHERE messages.user_id = #{self.id}")
	# end
end
