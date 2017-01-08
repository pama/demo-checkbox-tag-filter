class CreateCountryTags < ActiveRecord::Migration[5.0]
  def change
    create_table :country_tags do |t|
      t.references :country
      t.references :tag
    end
  end
end
