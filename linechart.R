# Load dataset
data(mtcars)

# Create a sequence for x-axis (Index of cars)
x <- 1:nrow(mtcars)

# Plot multiple lines for 'mpg' and 'qsec' using matplot
matplot(x, cbind(mtcars$mpg, mtcars$qsec), type = "l", lty = 1, col = c("blue", "red"),
        xlab = "Car Index", ylab = "Values", main = "MPG and QSEC in mtcars")

# Add legend
legend("topright", legend = c("MPG", "QSEC"), col = c("blue", "red"), lty = 1)
