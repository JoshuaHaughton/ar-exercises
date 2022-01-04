class Store < ActiveRecord::Base

  has_many :employees


  validate :name_at_least_3_characters,
  :annual_revenue_must_be_a_number_above_0


  def name_at_least_3_characters

    if name.length < 3
      errors.add(:name, "Must be longer than 3 characters!")
      puts self.errors[:name]
    end

  end


  def annual_revenue_must_be_a_number_above_0

    if !annual_revenue.is_a?(Fixnum)
      errors.add(:annual_revenue, "Annual Revenue Must be a number!")
      puts self.errors[:annual_revenue]
      return
    end

    if annual_revenue < 0
      errors.add(:annual_revenue, "Must be a number above 0!")
      puts self.errors[:annual_revenue]
    end

  end


end
