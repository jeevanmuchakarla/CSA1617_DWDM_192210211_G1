# Given marks data (sorted)
marks <- c(50, 55, 55, 55, 58, 59, 60, 61, 63, 63, 65, 65, 67, 71, 71, 72, 75)

# Number of bins
k <- 3

# (a) Equal-Frequency (Equi-Depth) Partitioning
n <- length(marks)
bin_size <- floor(n / k)  # Number of elements per bin

# Creating bins (manually since quantile-based division is needed)
bins_equal_freq <- split(marks, ceiling(seq_along(marks) / bin_size))

# Print bins
print("Equal-Frequency Bins:")
print(bins_equal_freq)

# (b) Equal-Width Partitioning
min_val <- min(marks)
max_val <- max(marks)
bin_width <- (max_val - min_val) / k

# Assign marks to bins using cut function
bins_equal_width <- cut(marks, breaks=seq(min_val, max_val, by=bin_width), include.lowest=TRUE, right=TRUE)

# Print bins
print("Equal-Width Bins:")
print(table(bins_equal_width))

# Histogram Plot
hist(marks, breaks=seq(min_val, max_val, by=bin_width), col="skyblue", border="black", main="Histogram of Marks", xlab="Marks", ylab="Frequency")

