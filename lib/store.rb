class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :must_carry_at_least_mens_or_womens_apparel
  def must_carry_at_least_mens_or_womens_apparel
    if !(womens_apparel || mens_apparel)
      errors.add(:mens_apparel, "Must carry at least mens or womens apparel")
    end
  end

end
