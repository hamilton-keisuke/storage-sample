class Article < ApplicationRecord
  def summary
    title + ' ' + content
  end
end
