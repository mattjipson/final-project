class LocationController < ApplicationController

    def user_location

        @street_address = params.fetch("user_street_address")
        url_safe_street_address = URI.encode(@street_address)
    
        url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{url_safe_street_address}"
        parsed_data = JSON.parse(open(url).read)
        @latitude = parsed_data.dig("results", 0, "geometry", "location", "lat")
        @longitude = parsed_data.dig("results", 0, "geometry", "location", "lng")  
        
    end    
    
    def user_location_form
        render("location_templates/user_location_form.html.erb")
    end        
end   