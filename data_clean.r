data <- read.csv('data/MXvideos_cc50_202101.csv')

# Eliminar columnas con ID vacio y categoryId
data <- data[!is.na(data$video_id),]
data <- data[!is.na(data$category_id),]
data <- data[!is.na(data$views),]

empty_data <- is.na(data)
summary(empty_data)
# to clean = likes, dislikes, comment_count
data$likes.mean <- ifelse(is.na(data$likes), mean(data$likes, na.rm = TRUE), data$likes)
data$dislikes.mean <- ifelse(is.na(data$dislikes), mean(data$dislikes, na.rm = TRUE), data$dislikes)
data$comment_count.mean <- ifelse(is.na(data$comment_count), mean(data$comment_count, na.rm = TRUE), data$comment_count)
summary(is.na(data))

View(data)

write.csv(data,"data/cleaned_MXvideos_cc50_202101.csv", row.names = FALSE)