# Given speed data
speed_data <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

# Calculate interquartile range (IQR)
IQR_value <- IQR(speed_data)

# Calculate standard deviation
std_dev <- sd(speed_data)

# Print results
cat("Interquartile Range (IQR):", IQR_value, "\n")
cat("Standard Deviation:", std_dev, "\n")

