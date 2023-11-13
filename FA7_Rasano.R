# FORMATIVE ASSESSMENT #7

# Invisibility Cloak dataset
data <- data.frame(
  Participant = 1:24,
  Cloak = c(rep(0, 12), rep(1, 12)),
  Mischief = c(3, 1, 5, 4, 6, 4, 6, 2, 0, 5, 4, 5, 4, 3, 6, 6, 8, 5, 5, 4, 2, 5, 7, 5)
)

# Assumption 1: Independence (No code needed, assumed from study design)

# Assumption 2: Normality
# You can visually inspect normality using histograms or conduct a normality test (e.g., Shapiro-Wilk)
shapiro.test(data[data$Cloak == 0,]$Mischief)
shapiro.test(data[data$Cloak == 1,]$Mischief)

# Assumption 3: Homogeneity of Variance
# Levene's test for homogeneity of variances
leveneTest(Mischief ~ Cloak, data = data)

# Assumption 4: Interval or Ratio Data (No code needed, assumed from the dataset)

# Assumption 5: Random Sampling (No code needed, assumed from study design)

# Independent Samples t-test
result <- t.test(Mischief ~ Cloak, data = data, var.equal = TRUE)

# Print the result
cat("Independent Samples t-test Result:\n")
print(result)