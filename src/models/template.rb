class Template < ApplicationRecord
  validates_uniqueness_of :course_id
end
