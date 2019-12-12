select 
  c.prefcture_id,
  c.id,
  c.name,
  city_level_areas.id as checked,
  cities_having_town_level_areas.id as need_dengar_label
from 
  cities c
  left outer join 
  (
    select 
      *
    from 
      service_areas sa
    where 
      sa.area_type = 'city' 
      and 
      sa.service_id = 10
  ) as city_level_areas 
  on c.id = city_level_areas.area_id
  left outer join
  (
    select 
      city_id,
      count(town_level_areas.id)
    from 
      (
        select 
          *
        from 
          service_areas sa
        where 
          sa.area_type = 'twon' 
          and
          sa.service_id = 10
      )as town_level_areas 
      join twon 
      on town_level_areas.area_id = twon.id
      group by twon.city_id
  ) as cities_having_town_level_areas
  on c.id = cities_having_town_level_areas.city_id