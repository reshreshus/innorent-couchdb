require 'couchrest_model'

class Subcategory < CouchRest::Model::Base
  property :title,	String
  property :description,	Text

  #validates_presence_of :title, :description, :category_id
  validates_presence_of :title, :description
end