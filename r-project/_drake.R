source("R/_packages.R")  # Load your packages, e.g. library(drake).
source("R/_functions.R") # Define your custom code as a bunch of functions.
source("R/_plan.R")      # Create your drake plan.

# _drake.R must end with a call to drake_config().
# The arguments to drake_config() are basically the same as those to make().
drake_config(plan, lock_envir = FALSE)
