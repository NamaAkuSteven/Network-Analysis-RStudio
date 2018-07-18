library(twitteR)
library(ROAuth)
library(RCurl)
library(httr)
library(magrittr)
library(igraph)
key="Mblrycq3sF4JTIEfBDvzbSefr"
secret="sVSnam6T7fOCRDlig8tcbJTBMb1sHfYTL94Dfp5soFpbA4fxD8"
tktoken="446052007-HX8Q2RIYvd4YTYInwMvyDOxK41hZKBaMLTlFEl5e"
tksecret="Bt7Wkuxwj1qWFL0nFOp8GA25Rnw5iCjs892EVcBvt86qC"
cacert="C://Users//user//Desktop//RcodeProg//{Rsocialmedia}//httrOauth//cacert.pem"
setup_twitter_oauth(key,secret,tktoken,tksecret)
myUser=getUser("DwightFonseka")
str(myUser)
myUser$getScreenName()
myUser$getFriends()
myUser$getFollowers()
myUser$getLocation()
myTimeline=homeTimeline()
length(myTimeline)
str(myTimeline[1])
for(i in 1:length(myTimeline)){
  print(myTimeline[[i]]$getText())
}
another=userTimeline("myname2")
for (i in 1:length(myTimeline)){
  print(paste("Tweet=", myTimeline[[i]]$getText()))
  print(paste("Retweet Count=", myTimeline[[i]]$getRetweetCount()))
}
followMe=myUser$getFollowers(10)
for (i in 1:length(followMe)) {
  print(paste("Screen Name = ", followMe[[i]]$getScreenName() ,
              " Followers Count = ",  
              followMe[[i]]$getFollowersCount() ))
}
myTweets=searchTwitter("myname", n=10)
class(myTweets)
length(myTweets)
head(myTweets)
ronaldoTweets = searchTwitter("Ronaldo", n=20)

for (i in 1:length(ronaldoTweets)) {
  print(paste("Tweet = ", ronaldoTweets[[i]]$getText()  ))
  print(paste("User = ",  ronaldoTweets[[i]]$getScreenName() ))
}
library(igraph)
start<-getUser('DwightFonseka') 
friends.object<-lookupUsers(start$getFriendIDs())
follower.object<-lookupUsers(start$getFollowerIDs())
n<-10 
friends <- sapply(friends.object[1:n],name)
followers <- sapply(follower.object[1:n],name)
relations <- merge(data.frame(User='yourname', Follower=friends), 
                   data.frame(User=followers, Follower='yourname'), all=T)
g <- graph.data.frame(relations, directed = T)
V(g)$label <- V(g)$name
E(g)$arrow.size<-0.2
plot(g)
tkplot(g)
rglplot(g)
myTwitterData=Authenticate("twitter", apiKey=key,
                            apiSecret=secret,
			                      accessToken=tktoken,
                            accessTokenSecret=tksecret)%>%
Collect(searchTerm="Messi", numTweets=150, writeToFile=F, verbose=T)
View(myTwitterData)
myTwitterData$text <- iconv(myTwitterData$text, to = 'utf-8')
g_twitter_semantic <- myTwitterData %>% Create("Semantic")
g_twitter_semantic
plot(g_twitter_semantic,vertex.shape="none",edge.width=1.5,edge.curved = .5,edge.arrow.size=0.5,asp=9/16,margin=-0.1)