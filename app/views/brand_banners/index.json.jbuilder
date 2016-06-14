json.array!(@brand_banners) do |brand_banner|
  json.extract! brand_banner, :id, :title, :description
  json.url brand_banner_url(brand_banner, format: :json)
end
