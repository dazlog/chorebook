class Chore < ActiveRecord::Base
  attr_accessible :child_id, :completed, :due_date, :name, :points
end
