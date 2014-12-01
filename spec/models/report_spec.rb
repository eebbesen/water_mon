require 'rails_helper'

RSpec.describe Report, :type => :model do
   it { should validate_presence_of(:first_name ) }
   it { should validate_presence_of(:last_name) }
   it { should validate_presence_of( :body_id ) }
   it { should validate_presence_of( :site_number ) }
   it { should validate_presence_of( :phone_1 ) }
   it { should validate_presence_of( :email ) }
end
