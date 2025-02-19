# Given age data
age_data <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 
              30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Calculate Q1 and Q3
quartiles <- quantile(age_data, probs = c(0.25, 0.75))

# Display results
print(quartiles)
