library(dplyr)
library(ggplot2)
aqidiff <- read.delim("data.txt", header = TRUE, stringsAsFactors = FALSE)
aqidiff <- aqidiff %>% mutate(aqi_diff = US_AQI - China_AQI) %>% mutate(Date = as.Date(Date, "%m/%d/%Y"))
str(aqidiff)
summary(aqidiff)
<<<<<<< HEAD
aa<-which(is.na(aqidiff[,2]))
aqidiff1<-aqidiff[-aa,]

zeromean<-aqidiff1$aqi_diff-mean(aqidiff1$aqi_diff)
ts.plot(zeromean)
library(urca)
summary(ur.df(diff(zeromean),lag=0,type="none"))
summary(ur.df(diff(zeromean),lag=1,type="none"))
summary(ur.df(diff(zeromean),lag=2,type="none"))
summary(ur.df(diff(zeromean),lag=0,type="drift"))
summary(ur.df(diff(zeromean),lag=1,type="drift"))
summary(ur.df(diff(zeromean),lag=2,type="drift"))
summary(ur.df(diff(zeromean),lag=0,type="trend"))
summary(ur.df(diff(zeromean),lag=1,type="trend"))
summary(ur.df(diff(zeromean),lag=2,type="trend"))
=======
ggplot(aqidiff, aes(Date, aqi_diff)) + geom_line() +xlab("") + ylab("AQI Difference(U.S.-China)")

>>>>>>> 89e7a04c1e56cbfebca9b2834f1b7c2c5a9ef8f0
