namespace :create_request_manualy do
  task perpetuity: :environment do
    begin
      annotations = Annotation.perpetuity
      annotations.each do |req|
        start_date = (req.date + 1.year).strftime("%B %d, %Y")
        end_date = DateTime.now.strftime("%B %d, %Y")
        if start_date == end_date
          new_params = req.attributes
          new_params["id"] = nil
          new_params["date"] += 1.year
          Annotation.create(new_params)
          p"=== Request Created ==="
        end
      end
    rescue Exception => e
      byebug
      p "Request not created due to error: #{e.message}"
      
    end
  end
end