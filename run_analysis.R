# Load package
library(reshape2)

# this part will check if the data folder is there.
datadir <- "UCI HAR Dataset"
if (!file.exists(datadir)){
    message(paste("The data folder:", datadir, "does not exist!"))
} else {
    message("Data folder found, loading data...")
}

# read the common files
features <- read.table(paste(datadir, "\\features.txt", sep = ""), sep = " ")[, 2]
activity_labels <- read.table(paste(datadir, "\\activity_labels.txt", sep = ""), sep = " ")

# this part will read the test data set
testdir <- paste(datadir, "\\test\\", sep = "")
subject_test <- read.table(paste(testdir, "subject_test.txt", sep = ""), col.names = "subject")
X_test <- read.fwf(paste(testdir, "X_test.txt", sep = ""), 
                   widths = rep(16, 561), buffersize = 100, 
                   colClasses = rep('numeric', 561), 
                   col.names = features)

y_test <- read.table(paste(testdir, "y_test.txt", sep = ""), col.names = "label")
testdata <- cbind(subject_test, y_test, X_test)

# this part will read the train data set
traindir <- paste(datadir, "\\train\\", sep = "")
subject_train <- read.table(paste(traindir, "subject_train.txt", sep = ""), col.names = "subject")
X_train <- read.fwf(paste(traindir, "X_train.txt", sep = ""), 
                    widths = rep(16, 561), buffersize = 100, 
                    colClasses = rep('numeric', 561), 
                    col.names = features)

y_train <- read.table(paste(traindir, "y_train.txt", sep = ""), col.names = "label")
traindata <- cbind(subject_train, y_train, X_train)

# This code will combine test and train datasets
alldata <- rbind(testdata, traindata)

## Extract only mean and standard deviation measures
extfeatures <- features[grep("mean\\(\\)|std\\(\\)", features)]
# Convert special character to dots as defaults
extnames <- gsub("[\\(\\)\\,-]", ".", extfeatures)
# Filter the data
extdata <- cbind(alldata["subject"], alldata["label"], alldata[, extnames])

## Uses descriptive activity names to name the activities in the data set
extdata['label'] <- factor(extdata[['label']], activity_labels[[1]], activity_labels[[2]])

# Appropriately labels the data set with descriptive variable names. 
# Replace those dots
colnames(extdata) <- gsub("\\.{2,}", ".", colnames(extdata))
colnames(extdata) <- gsub("\\.$", "", colnames(extdata))
extnames <- gsub("\\.{2,}", ".", extnames)
extnames <- gsub("\\.$", "", extnames)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# fac <- paste(extdata[['subject']],extdata[['label']], sep='.')
# extdata['factor'] <- paste(extdata[['subject']],extdata[['label']], sep='.')
mdata <- melt(extdata, id = names(extdata)[1:2], measure.vars = colnames(extdata)[c(3:ncol(extdata))])
cdata <- tapply(mdata$value, list(mdata$subject, mdata$label, mdata$variable), mean)

# loop on 30 subject
tidydata <- data.frame()
for (i in c(1:30)) {
    t <- cbind(i, rownames(cdata[i, , ]), cdata[i, , ])
    if (i > 1) {
        tidydata <- rbind(tidydata, t)
    } else {
        tidydata <- t
    }
}

colnames(tidydata)[1:2] <- c('subject', 'label')
rownames(tidydata) <- c()

write.csv(tidydata,"tidydata.csv")
