# ================================
# global.R
# ================================

# Load package list
source("config/packages.R")

# Load settings
library(yaml)
settings <- yaml::read_yaml("config/settings.yaml")

# Global UI theme
source("modules/ui/theme.R")

# Helper functions
source("modules/data_cleaning/validate_inputs.R")
source("modules/data_cleaning/preprocessing.R")

# Global constants (shared across all modules)
DELIVERY_THRESHOLD <- settings$late_delivery_threshold
DEFAULT_CLUSTERS   <- settings$cluster_count
DEFAULT_SUPPORT    <- settings$association_rules$support
DEFAULT_CONFIDENCE <- settings$association_rules$confidence

# Default file paths
RAW_DATA_PATH  <- "data/raw/deliveries_raw.csv"
CLEAN_DATA_PATH <- "data/cleaned/deliveries_clean.csv"

# Load cleaned data if exists
if (file.exists(CLEAN_DATA_PATH)) {
  deliveries_clean <- read.csv(CLEAN_DATA_PATH)
} else {
  deliveries_clean <- NULL
}

# Global color palette for visualizations
GLOBAL_COLORS <- c("#004c6d", "#006e90", "#8ac6d1", "#ffbc42", "#d81159")

