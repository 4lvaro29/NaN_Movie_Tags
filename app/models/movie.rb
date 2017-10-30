class Movie < ApplicationRecord
	has_many :movie_tags, dependent: :destroy
	has_many :tags, through: :movie_tags

	attr_accessor :tags_ids
end	
