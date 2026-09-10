library(tidyverse)

china_aqi <- read.csv("E:/Github/dkustats101fall2026s1/homeworks/Unit 2 homework/china_provincial_capitals_daily_weather_air_quality_2023_2026.csv")

shanghai_aqi <- china_aqi |> 
  filter(city_name=="Shanghai")

write.csv(shanghai_aqi, "E:/Github/dkustats101fall2026s1/homeworks/Unit 2 homework/shanghai_air_pollution.csv")

ggplot(shanghai_aqi, aes(x=temperature_2m_mean_c, y=pm2_5_mean_ug_m3)) +
  geom_point()

ggplot(shanghai_aqi, aes(x=wind_speed_10m_max_kmh, y=pm2_5_mean_ug_m3)) +
  geom_point()

ggplot(shanghai_aqi, aes(x=shortwave_radiation_sum_mj_m2, y=pm2_5_mean_ug_m3)) +
  geom_point()

ggplot(shanghai_aqi, aes(x=precipitation_sum_mm, y=pm2_5_mean_ug_m3)) +
  geom_point()

ggplot(shanghai_aqi, aes(x=temperature_2m_mean_c, y=pm10_mean_ug_m3)) +
  geom_point()

ggplot(shanghai_aqi, aes(x=wind_speed_10m_max_kmh, y=pm10_mean_ug_m3)) +
  geom_point()

ggplot(shanghai_aqi, aes(x=shortwave_radiation_sum_mj_m2, y=pm10_mean_ug_m3)) +
  geom_point()