# If private github packages are needed create a token by going to
# https://github.com/settings/tokens
# >> Settings >> Developer settings >> Personal access token
# and select the `repo` scope

# If your token is not stored as the GITHUB_PAT environment variable:
#  Sys.setenv(GITHUB_PAT = "your_token")
# Do not share your token. It allows read/write access to your repositories

# Packages installation
if (file.exists("renv.lock")) {# Restore from a lockfile if it exists.
  renv::restore(confirm = FALSE) # Do not ask for confirmation
} else {
  # Otherwise install the packages and make a lockfile
  renv::install(c(
    "drake",
    "here",
    "fs",
    rebuild = TRUE
  )

  # save the lockfile
  renv::snapshot()
  }
