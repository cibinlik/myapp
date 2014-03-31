class Question < ActiveRecord::Base
	validates :question, presence: true,
							length: { minimum: 5 }
end
