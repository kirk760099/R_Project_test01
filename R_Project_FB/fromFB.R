#install.packages("devtools")
library(devtools)
#install
library(Rfacebook)

token <- "EAACEdEose0cBAGTYFIjOFlQEOmz7ITwCaaJsWozDSUOTbjzA0DmjcdCmxBQcY6iRl7ZAgDZAJkqsbqQHjU9zC4yNKlDp7pf122V2tGT0ZAZBTeORGrV88eWG0vXZC3OheT76ABksOtfaW57DreZCMIrJRvHKKpxdP95yQ6BZBXWYAZDZD"
me = getUsers("me",token,private_info = TRUE)

my_friends <- getFriends(token =token, simplify = TRUE )

if(user$id ='739765567')
{
for (i in 1:5)
{
  user = getUsers(my_friends$id[i],token,private_info = TRUE)
  print(user$name)
}
}
