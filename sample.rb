
areas = ServiceArea.where(service_id: 10)

# 町レベルの配信エリアを持っている都市が欲しい

town_level_areas = areas.where(area_type: 'town')

towns_having_area = Town.where(id: town_level_areas.select(:area_id))

cities_having_town_level_area = City.where(id: town_level_areas.select(:city_id).unique)  