class Book < ApplicationRecord
  belongs_to :library, optional: true
  belongs_to :collector, optional: true
  belongs_to :retailer, optional: true
  belongs_to :university, optional: true

  validate :can_be_only_one

  private

  def can_be_only_one
    if library_count + retailer_count + collector_count + university_count != 1
      errors.add(:base, "el libro es fiel")
    end
  end
  
  def library_count
    self.library.present? ? 1 : 0
  end
  
  def collector_count
    self.collector.present? ? 1 : 0
  end

  def university_count
    self.university.present? ? 1 : 0
  end

  def retailer_count
    self.retailer.present? ? 1 : 0
  end


end
