require 'couchrest_model'

class Category < CouchRest::Model::Base
	#has_many :subcategories
	property :title,      String
	property :description,	Text

	validates_presence_of :title, :descriptions
end	
