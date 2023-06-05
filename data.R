data <- read.csv(file = "HW2data.csv")
grades <- read.csv(file = "HW2grade.csv")
output <- array("", dim=c(20, 4)) # 開一個二微維陣列

for (i in 1:nrow(data)) {
    score <- (as.numeric(data[i, 4]) + as.numeric(data[i, 5]) + as.numeric(data[i, 6])) * 0.1 + as.numeric(data[i, 7]) * 0.3 + as.numeric(data[i, 8]) * 0.4
    score1 <- round(score)
    for (j in nrow(grades):1) {
      gradeLower <- as.numeric(grades[j, 1])
      if (score1 >= gradeLower) { 
          output[i, 1] <- data[i, 2]
          output[i, 2] <- data[i, 3]
          output[i, 3] <- round(score, 2)
          output[i, 4] <- grades[j, 3]
          break
      }
    }
    
}

write.table(output, "outputR.csv", sep=",", col.names=FALSE)
cat("Success!\n")