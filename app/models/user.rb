class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }

  searchable do
    # -- Solr search engine --
    text :name
    text :name, :as => :name_ngram
  end
end
