class CountryTag < ApplicationRecord
  belongs_to :country
  belongs_to :tag
end
