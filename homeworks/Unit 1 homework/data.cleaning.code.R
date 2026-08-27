library(tidyverse)

movies <- read.csv("E:/Github/dkustats101fall2026s1/homeworks/Unit 1 homework/TMDB_movie_dataset_v11.csv")

library(lubridate)

mutate(release_date = ymd(release_date)) %>% 
  filter(release_date >= ymd("2024-01-01")) %>% 

major_movies <- movies %>% 
  mutate(release_date = ymd(release_date)) %>% 
  filter(release_date >= ymd("2020-01-01")) %>% 
  filter(production_countries %>% str_detect(fixed("United States of America"))) %>% 
  filter(budget > 1000000) %>% 
  filter(runtime > 30) %>% 
  filter(revenue > 30) %>% 
  filter(status=="Released")


write.csv(major_movies, file="major_movies.csv")