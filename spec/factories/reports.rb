FactoryGirl.define do
  factory :stream_report, class: Report do
    last_name "Trout"
    first_name "Brook"
    body_id "S000-001" # stream_id
    contact_id 9999
    site_number "8888" # site_id
    phone_1 "651-555-1212" # phone
    email "brook.trout@stream.mn"
    previous_year true # did_you_monitor_this_site_last_year?
  end

  factory :lake_report, class: Report do
    last_name "Walleye"
    first_name "Wally"
    clmp_number 7777 # clmp_number
    body_name "Mille Lacs" # lake_name
    body_id "48-0002-00" # lake_number
    site_number "48-0002-00-209" # site_number
    county "Crow Wing"
    phone_1 "218.555.1212" # phone_summer
    phone_2 "850.555.1212" # phone_winter
    email "wally.walleye@lake.mn"
    previous_year false # did_you_monitor_this_site_last_year?
    lake_depth 1.5 # lake_depth_at_sampling_site
  end

end
