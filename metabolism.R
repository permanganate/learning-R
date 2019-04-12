# Calculating correlations

# Load data file about Google searches by state
metabolism <- read.csv("metabolism.csv", header = T)
names(metabolism)

# Create data frame with only quantitative variables
metab.quant <- metabolism[c(3, 6, 13)]

# Correlation matrix for data frame
cor(metab.quant)

# Can test one pair of variables at a time
# Gives r, hypothesis test, and confidence interval
cor.test(g.quant$data_viz, g.quant$degree)

# Install "Hmisc" package to get p-values for matrix
install.packages("Hmisc")
library("Hmisc")

# Need to coerce g.quant from data frame to matrix
# to get correlation matrix and p-values
rcorr(as.matrix(g.quant))
