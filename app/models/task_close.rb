class TaskClose < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :clean
  belongs_to :money
  belongs_to :trouble

  with_options presence: true do
    validates :clean_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :money_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :trouble_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :sales_result
    validates :checker
  end


end
