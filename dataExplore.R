library(dplyr)
aqidiff <- read.delim("data.txt", header = TRUE)
aqidiff <- aqidiff %>% mutate(aqi_diff = US_AQI - China_AQI)
summary(aqidiff)
