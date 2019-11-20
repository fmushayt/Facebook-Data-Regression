# Loading the facebook dataset
facebook <- read.csv("dataset_Facebook.csv", sep = ";", header = TRUE, 
                     colClasses=c(Category="factor", Type="factor", Post.Hour="integer",
                                  Post.Month="integer", Post.Weekday="integer", Paid="factor")) %>% transmute(Category, Type, Post.Hour, Post.Month, Post.Weekday, Paid, 
                                                                                                            Page.total.likes, Lifetime.Post.Consumers)

# Remove rows with NA's
fb<-facebook[complete.cases(facebook), ]
