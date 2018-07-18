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

<h2>
<p align="center">
The Process
</p>
</h2>

<p align="justify">
In order to install RStudio, we must have to install R. After installing R, we can install RStudio. RStudio will check if your computer already installed R, and if you already do, the process won’t be obstructed. Open RStudio, and transfer the file that you have found into RStudio.

![rstudio screen](https://user-images.githubusercontent.com/25146223/42859589-1410657e-8a7e-11e8-921e-843bc09bda97.png)
  
^When you open RStudio with the code in it

<p align="justify">
Once RStudio is installed, download the source code from the trusted website. Just a side note though, before you run the application makes sure to install every package in the code (seen in image below). For our project, we need to install the following library:

•	library(twitteR) - twitteR is an R package which provides access to the Twitter API.

•	library(ROAuth) - Provides an interface to the OAuth 1.0 specification allowing users to authenticate via OAuth to the server of their choice.

•	library(RCurl) - Provides functions to allow one to compose general HTTP requests and provides convenient functions to fetch URIs, get & post forms, etc. and process the results returned by the Web server.

•	library(httr) - Useful tools for working with HTTP organized by HTTP verbs (GET(), POST(), etc).

•	library(magrittr) - Provides a mechanism for chaining commands with a new forward-pipe operator, %>%. This operator will forward a value, or the result of an expression, into the next function call/expression.

•	library(igraph) - Routines for simple graphs and network analysis.

![library](https://user-images.githubusercontent.com/25146223/42859504-8b0db768-8a7d-11e8-96fc-9c3a02dba439.jpg)

^The library that must be installed in RStudio before running the code

Once the libraries are all sets, click the run button in the top-middle of the screen. When you click the button, it will read the line of code of the corresponding line. Make sure to start from line 1 (Starting Point).

![run button](https://user-images.githubusercontent.com/25146223/42860382-5f6e02c2-8a80-11e8-93e7-f2ec6d562ae0.png)

^The ‘Run Button’ is located in the top-left screen

![run button 2](https://user-images.githubusercontent.com/25146223/42860608-9e5d39ca-8a81-11e8-88b7-9f9d34556be1.png)

^The ‘Run Button’

Click it repeatedly until the line reaches the bottom of the code (Ending Point). Once it reaches bottom line, checks the output.
The Output

![output small](https://user-images.githubusercontent.com/25146223/42860648-c6bc2d04-8a81-11e8-9971-43c3b068197d.jpg)
 
^The bottom line of the code and the output

![output large](https://user-images.githubusercontent.com/25146223/42860753-2be3091e-8a82-11e8-8c2b-f8103932af38.png)

^The output

![graph](https://user-images.githubusercontent.com/25146223/42860822-8c351442-8a82-11e8-8dcd-0fe288e1f4f2.png)

^The output using graph plot

<h2>
<p align="center">
References
</p>
</h2>

1 https://www.inloox.com/project-management-glossary/network-analysis/

2 http://www.orgnet.com/sna.html

3 http://www.insna.org/what_is_sna.html

4 https://github.com/tertiarycourses/RSocialMedia (The Source Code)

<h2>
<p align="center">
Note
</p>
</h2>

<p align="justify">
We didn’t fully copy the work, we edit it to create something different. All articles and code belongs to their perspective owner. Thank you for reading my repository! ^w^ 
