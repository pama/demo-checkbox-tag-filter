class Tag < ApplicationRecord
  has_many :country_tags
  has_many :countries, through: :country_tags
end
