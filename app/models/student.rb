class Student < ActiveRecord::Base
    # belongs_to :school_classes
  def to_s
    self.first_name + " " + self.last_name
  end
end
