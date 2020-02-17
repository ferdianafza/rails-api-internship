json.extract! presence, :id, :checkin, :ccheckout, :created_at, :updated_at
json.url presence_url(presence, format: :json)
