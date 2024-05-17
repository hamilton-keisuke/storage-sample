require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:title) { 'hoge' }
  let!(:content) { '1234567890qaz' }
  let(:article) do
    data = create(:article, title:, content:)
    puts "article.lock_version : #{data.lock_version}"
    puts "Article.first.lock_version : #{Article.first.lock_version}"
    data
  end

  context 'example' do
    it do
      expect(article.summary).to eq(title + ' ' + content)
    end
  end
end
