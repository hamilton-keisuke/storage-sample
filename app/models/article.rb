class Article < ApplicationRecord
  has_one_attached :data

  def summary
    title + ' ' + content
  end
end
