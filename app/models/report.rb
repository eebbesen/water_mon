class Report < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :body_id, :site_number, :phone_1, :email
  validates_inclusion_of :previous_year, in: [true, false]
end
