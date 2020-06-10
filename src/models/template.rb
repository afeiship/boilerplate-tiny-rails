class BoilerplateDbName < ApplicationRecord
  validates_uniqueness_of :course_id
end
