# Install and load Ryacas
install.packages("Ryacas")
library(Ryacas)

# Define symbolic variables
gamma22 <- ysym("gamma22")
gamma32 <- ysym("gamma32")
gamma43 <- ysym("gamma43")

# Create the matrix string using the correct Yacas list-based format
mat_str <- "List(List(0, -gamma22, 0), List(0, -gamma32, 0), List(1, 0, -gamma43))"

# Compute the determinant using Yacas
determinant <- yac_str(paste("Determinant(", mat_str, ")"))

# Simplify the determinant
determinant_simplified <- yac_str(paste("Simplify(", determinant, ")"))

# Print the simplified determinant
print(determinant_simplified)
