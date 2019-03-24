require 'couchrest_model'

class User < CouchRest::Model::Base
	property :email,      String
	property :password,      String
	property :username,      String
	property :name,      String
	property :surname,      String
	property :phone,      String
	property :surname,      String
	property :role_id,      Integer
	# has_many :items, dependent: :destroy
	# TODO: does has_secure_password work with couchdb model?
	has_secure_password

 	validates_presence_of :email, :name, :surname, :password_digest, :role_id
end