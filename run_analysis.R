
## Coursera Data Science course getdata-002 programming assignment.

## Created: Sun Apr 27 16:17:44 CDT 2014
## Author : Mike Martinez
## Email  : martinezm AT ociweb DOT com

# Obtain the data to a local file if we don't already have it.
if(!file.exists('galaxy.zip')) {
  download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip','galaxy.zip',method='curl')
}

# Load the datasets.

