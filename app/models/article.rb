class Article < ActiveRecord::Base
	after_initialize :init

	validates :title, presence: true
	validates :url, presence: true

	def init
		self.upvotes ||= 0
	end

end
