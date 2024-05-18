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
      number = Oj.load(article.data.download).deep_symbolize_keys[:number]
      article.change_attached_data
      new_number = Oj.load(article.data.download).deep_symbolize_keys[:number]
      expect(number).not_to eq new_number
    end
  end
end
