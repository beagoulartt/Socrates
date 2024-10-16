#install.packages("readr")
#install.packages("dplyr")


library(readr)
library(dplyr)

# Read CSV file using readr
data <- read_csv("C:\\Users\\DataIntern\\Desktop\\Socrates\\Socrates\\RES-Socrates.csv")

## Check the updated column names
colnames(data)


# Add a new column 'Decile Scores' based on the conditions
data <- data %>%
  mutate(Score_Rec_Category = case_when(
    `SocD_ recognition_total` == 35 ~ "70",
    `SocD_ recognition_total` == 34 ~ "60",
    `SocD_ recognition_total` %in% 32:33 ~ "50",
    `SocD_ recognition_total` == 31 ~ "40",
    `SocD_ recognition_total` %in% 29:30 ~ "30",
    `SocD_ recognition_total` %in% 27:28 ~ "20",
    `SocD_ recognition_total` %in% 7:26 ~ "10",
    TRUE ~ "Other"  # Default case if none of the conditions match
  ),
  Score_Amb_Category = case_when(
    SocD_Ambivalence_total %in% 19:20 ~ "70",
    SocD_Ambivalence_total == 18 ~ "80",
    SocD_Ambivalence_total == 17 ~ "70",
    SocD_Ambivalence_total == 16 ~ "60",
    SocD_Ambivalence_total == 15 ~ "50",
    SocD_Ambivalence_total == 14 ~ "40",
    SocD_Ambivalence_total %in% 12:13 ~ "30",
    SocD_Ambivalence_total %in% 9:11 ~ "20",
    SocD_Ambivalence_total %in% 4:8 ~ "10",
    TRUE ~ "Other"  # Default case if none of the conditions match
  ),
  
  Score_TSteps_Category = case_when(
    SocD_TakingSteps_total %in% 39:40 ~ "90",
    SocD_TakingSteps_total %in% 37:38 ~ "80",
    SocD_TakingSteps_total == 36 ~ "70",
    SocD_TakingSteps_total %in% 34:35 ~ "60",
    SocD_TakingSteps_total == 33 ~ "50",
    SocD_TakingSteps_total %in% 31:32 ~ "40",
    SocD_TakingSteps_total == 30 ~ "30",
    SocD_TakingSteps_total %in% 26:29 ~ "20",
    SocD_TakingSteps_total %in% 8:25 ~ "10",
    TRUE ~ "Other"  # Default case if none of the conditions match
  ))






