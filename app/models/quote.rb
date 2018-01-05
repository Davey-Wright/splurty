class Quote < ApplicationRecord
	validates :saying, presence: true, length: { maxium: 140, minimum: 3 }
	validates :movie_reference, presence: true, length: { maximum: 100, minimum: 3 }
end
