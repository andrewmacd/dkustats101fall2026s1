library(dplyr)

nba_2026 <- read.csv("~/Github/dkustats101fall2026s1/lectures/datasets/nba_2026.csv")

nba_2026 <- nba_2026 %>%
  filter(date >= as.Date("2025-09-01"))

nba_2026 <- nba_2026 %>%
  group_by(gameid) %>%
  mutate(
    winner = if_else(PTS == max(PTS, na.rm = TRUE), "YES", "NO")
  ) %>%
  ungroup()

nba_2026 <- nba_2026 %>% 
  mutate(home.away = ifelse(team == home, "home", "away"))

write.csv(nba_2026, "~/Github/dkustats101fall2026s1/lectures/datasets/nba_2026_clean.csv")