library(dplyr)

df1 <- read.csv2(file = "2014/PSU2014-promedios-psu_EDITED_sheet1.csv", strip.white = TRUE, stringsAsFactors = FALSE)
df2 <- read.csv2(file = "2014/PSU2014-promedios-psu_EDITED_sheet2.csv", strip.white = TRUE, stringsAsFactors = FALSE)
df3 <- read.csv2(file = "2014/PSU2014-promedios-psu_EDITED_sheet3.csv", strip.white = TRUE, stringsAsFactors = FALSE)

nrow(df1)
nrow(df2)
nrow(df3)

df_all <- bind_rows(df1, df2, df3)
nrow(df_all)
df_all$ORD <- NULL

write.csv2(df_all, file = "2014/PSU2014-promedios_combined.csv", row.names = FALSE)

