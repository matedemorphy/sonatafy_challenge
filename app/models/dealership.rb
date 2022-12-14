class Dealership < ApplicationRecord
	has_many :cars, dependent: :destroy

	validates_presence_of :location, :address, :phone_number, :cell_phone_number, :email
	validates_format_of :email, :with => Devise::email_regexp
end
