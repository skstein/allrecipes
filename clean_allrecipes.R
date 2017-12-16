setwd("~/Desktop/allrecipes")

# Load data
data <- read.table("dinner1.txt", header=FALSE, quote="", sep="|")
files <- paste("dinner", 2:33, ".txt", sep="")
for (f in files) {
  temp <- read.table(f, header=FALSE, quote="", sep="|")
  temp$V1 <- as.factor(temp$V1)
  data <- rbind(data, temp)
}
names(data) <- c("madeitcount", "reviewcount", "starrating", "readyintime", "ingredients", "steps", "categories")
data <- data[!duplicated(data),]
save(data, file="data_allrecipes.RData")




