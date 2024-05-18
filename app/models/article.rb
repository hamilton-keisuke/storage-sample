class Article < ApplicationRecord
  has_one_attached :data

  def summary
    title + ' ' + content
  end

  # change number
  def change_attached_data
    hash = Oj.load(self.data.download).deep_symbolize_keys
    hash[:number] = rand(100)
    new_hash = Oj.dump hash
    self.data.attach(io: StringIO.new(new_hash), filename: "sample.json", content_type: "application/json")
    self.save!
  end
end
