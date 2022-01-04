class Employee < ActiveRecord::Base
  belongs_to :store




  validate :must_have_first_name,
  :must_have_last_name,
  :must_make_over_40_less_than_200,
  :must_belong_to_store


def must_have_first_name
  if !first_name.present?
    errors.add(:first_name, "must be present.")
    puts self.errors[:first_name]
  end
end

def must_have_last_name
  if !last_name.present?
    errors.add(:last_name, "must be present.")
    puts self.errors[:last_name]
  end
end

def must_make_over_40_less_than_200
  if (hourly_rate < 40 || hourly_rate > 200)
    errors.add(:hourly_rate, "must be between $40 and $200.")
    puts self.errors[:hourly_rate]
  end

end

def must_belong_to_store
  if !store_id
    errors.add(:store_id, "must not be null.")
    puts self.errors[:store_id]
  end
end


end
