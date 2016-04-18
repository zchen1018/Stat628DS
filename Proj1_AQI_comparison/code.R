data=read.delim("file:///F:/628/p1/data.txt")
aa=which(is.na(data[,2]))
data.complete=data[-aa,]
data.complete$delta=data.complete[,3]-data.complete[,2]
ts.plot(data.complete$delta)
data.complete$zeromean=data.complete$delta-mean(data.complete$delta)
ts.plot(data.complete$zeromean)
library(urca)
summary(ur.df(diff(data.complete$zeromean),lag=0,type="none"))
summary(ur.df(diff(data.complete$zeromean),lag=1,type="none"))
summary(ur.df(diff(data.complete$zeromean),lag=2,type="none"))
summary(ur.df(diff(data.complete$zeromean),lag=0,type="drift"))
summary(ur.df(diff(data.complete$zeromean),lag=1,type="drift"))
summary(ur.df(diff(data.complete$zeromean),lag=2,type="drift"))
summary(ur.df(diff(data.complete$zeromean),lag=0,type="trend"))
summary(ur.df(diff(data.complete$zeromean),lag=1,type="trend"))
summary(ur.df(diff(data.complete$zeromean),lag=2,type="trend"))



In order to check if the differences in AQI is not zero, we need to check the aqidiff time series data is stationary and the mean is away from zero. Here, we first delete the overall mean of aqidiff from the original data and then use ADF test to check if this series is stationary with mean zero.

```{r setup}
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
```