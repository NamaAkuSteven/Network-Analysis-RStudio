<h1><p align="center">Frontier Project – Network Analysis with R</p></h1>
<h2>
<p align="center">
About Network Analysis
</p>
</h2>

<p align="justify">
Network Analysis is the mathematical analysis of complex working procedures in terms of a network of related activities by calculating the electric currents flowing in the various meshes of a network often carried out by a device used to model the network. In this model, all activities are displayed in the consideration of time and dependencies. The method of the network analysis is used to control the project. The individual activities will be arranged and recorded according to the dependencies and their time required. Such a planning of the logical relationships between activities and their timing is the basis for the creation of the communication tools. [1]

<p align="justify">
We have learned about Network Analysis. Now we can learn about Social Network Analysis, which play an important role for our project. Social network analysis, or SNA for short, is the mapping and measuring of relationships and flows between people, groups, organizations, computers, URLs, and other connected information / knowledge entities. The term social network refers to the articulation of a social relationship, ascribed or achieved, among individuals, families, households, villages, communities, regions, and so on. The nodes in the network are the people and groups while the links show relationships or flows between the nodes. SNA provides both a visual and a mathematical analysis of human relationships. [2]

<p align="justify">
Social network analysis is focused on uncovering the patterning of people's interaction. It is about the kind of patterning that Roger Brown described when he wrote: "Social structure becomes actually visible in an anthill; the movements and contacts one sees are not random but patterned. We should also be able to see structure in the life of an American community if we had a sufficiently remote vantage point, a point from which persons would appear to be small moving dots. . . . We should see that these dots do not randomly approach one another, that some are usually together, some meet often, some never. . . . If one could get far enough away from it human life would become pure pattern." [3]

<h2>
<p align="center">
The Project
</p>
</h2>

<p align="justify">
I, along with our group, which consist of two more people, am going to replicate Network Analysis using RStudio. We also use Google Chrome for our trusted Browser to browse through any information regarding of Network Analysis and tested the project. During our project, we found a lot of hardship. For starter, we have mistaken our project for ‘Sentiment Analysis’, so we wasted a lot of our time making ‘Sentiment Analysis’ diagram in RStudio. Secondly, some of the code that we downloaded didn’t work and we don’t know why. Thirdly, for me personally, the group isn’t able to manage time and didn’t work passionately. It pains me to do most of 80% of the project alone, while others just laughing and partying.

The process
In order to install RStudio, we must have to install R. After installing R, we can install RStudio. RStudio will check if your computer already installed R, and if you already do, the process won’t be obstructed. Open RStudio, and transfer the file that you have found into RStudio.

<p align="center">
 ![image](https://user-images.githubusercontent.com/25146223/42857852-e9e28e10-8a75-11e8-9c7a-ac9442d15f1f.png)

^When you open RStudio with the code in it
</p>

Once RStudio is installed, download the source code from the trusted website. Just a side note though, before you run the application makes sure to install every package in the code (seen in image below). For our project, we need to install the following library:

•	library(twitteR)

o	twitteR is an R package which provides access to the Twitter API.
•	library(ROAuth)

o	Provides an interface to the OAuth 1.0 specification allowing users to authenticate via OAuth to the server of their choice.

•	library(RCurl)

o	Provides functions to allow one to compose general HTTP requests and provides convenient functions to fetch URIs, get & post forms, etc. and process the results returned by the Web server.

•	library(httr)

o	Useful tools for working with HTTP organized by HTTP verbs (GET(), POST(), etc).

•	library(magrittr)

o	Provides a mechanism for chaining commands with a new forward-pipe operator, %>%. This operator will forward a value, or the result of an expression, into the next function call/expression.

•	library(igraph)

o	Routines for simple graphs and network analysis.
 
^The library that must be installed in RStudio before running the code

Once the libraries are all sets, click the run button in the top-middle of the screen. When you click the button, it will read the line of code of the corresponding line. Make sure to start from line 1 (Starting Point).
 
^The ‘Run Button’ is located in the top-left screen
 
^The ‘Run Button’

Click it repeatedly until the line reaches the bottom of the code (Ending Point). Once it reaches bottom line, checks the output.
The Output
 
^The bottom line of the code and the output
 
^The output
 
^The output using graph plot

The Code [4]
library(twitteR)
library(ROAuth)
library(RCurl)
library(httr)
library(magrittr)
library(igraph)
key="xxx"
secret="xxx"
tktoken="xxx"
tksecret="xxx"
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

Reference

1 https://www.inloox.com/project-management-glossary/network-analysis/

2 http://www.orgnet.com/sna.html

3 http://www.insna.org/what_is_sna.html

4 https://github.com/tertiarycourses/RSocialMedia

Note

We didn’t fully copy the work, we edit it to create something different. All articles and code belongs to their perspective owner.

