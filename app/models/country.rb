class Country < ApplicationRecord
  has_many :country_tags
  has_many :tags, through: :country_tags

  def self.tags_query(tag_ids)
    if tag_ids.count == 1
      joins(:country_tags).where('country_tags.tag_id': tag_ids.first)
    else
      joins(:country_tags).where('country_tags.country_id': CountryTag.select('country_tags.country_id')
                                                                      .where(tag_id: tag_ids)
                                                                      .group('country_tags.country_id')
                                                                      .having("COUNT(country_tags.country_id) > #{tag_ids.count - 1}"))
      .uniq
    end
  end
end
