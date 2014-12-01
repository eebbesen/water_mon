json.array!(@reports) do |report|
  json.extract! report, :id, :first_name, :last_name, :body_id, :contact_id, :site_number, :lake_depth, :county, :phone_1, :phone_2, :email, :previous_year
  json.url report_url(report, format: :json)
end
