json.array!(@banners) do |banner|
  json.extract! banner, :id, :sector_id, :title, :description
  json.url banner_url(banner, format: :json)
end
