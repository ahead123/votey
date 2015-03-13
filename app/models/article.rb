class Article < ActiveRecord::Base
	validates :article, presence: true
	validates :url, presence: true
end
