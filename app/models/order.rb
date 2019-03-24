require 'couchrest_model'
class Order < CouchRest::Model::Base
	property :description,	Text
	property :status,      Integer
	property :duration, references

	# validates_presence_of :item_id, :user_id, :duration, :status, :description
	validates_presence_of :duration, :status, :description

	# item:references user:references
	# belongs_to :item
  	# belongs_to :user
end
