# fb = read.csv2("~/Downloads/BU/575lab/dataset_Facebook.csv",header=TRUE)
# #head(fb)
# nrow(fb)
# Y = fb$Lifetime.Post.Consumers;
# category = fb$Category; page = fb$Page.total.likes; type = fb$Type
# month = fb$Post.Month; hour = fb$Post.Hour; weekday = fb$Post.Weekday
# paid = fb$Paid





facebook <- read.csv2("~/Downloads/BU/575lab/dataset_Facebook.csv", sep = ";", header = TRUE, 
                     colClasses=c(Category="factor", Type="factor", Post.Hour="integer",
                                  Post.Month="integer", Post.Weekday="integer", Paid="factor")) %>% transmute(Category, Type, Post.Hour, Post.Month, Post.Weekday, Paid, Page.total.likes, Lifetime.Post.Consumers)

facebook

fb = facebook[-1,]
fb.time = fb[order(fb$Post.Hour, fb$Post.Month,fb$Post.Weekday),]
fb.time$RefTime = seq(1,nrow(fb),len=nrow(fb))
#nrow(fb)
#structure(facebook)
#fb = na.omit(facebook)
#fb<-facebook[complete.cases(facebook), ]
#nrow(fb)
#head(facebook)
#fb = facebook[-1,]                                                       

# spring = month[month == 3||month == 4||month == 5]
# summer = month[month == 6||month == 7||month == 8]
# fall = month[month == 9|| month == 10|| month ==11]

#create a new data frame with selected variables
#tempdataset = data.frame(Y, category,page,type,month,hour,weekday,paid)
#rm(Y, category,page,type,month,hour,weekday,paid)
#Dataset<-tempdataset[complete.cases(tempdataset), ]
#nrow(Dataset)
#na.omit()

#fb[!complete.cases(tempdataset), ]
#fb[500,]
