#B1: Cài đặt và sử dụng packages
install.packages("readxl")
install.packages("tidyverse")

library(readxl)
library(tidyverse)

#B2: Đọc dữ liệu từ file Excel
df <- read_excel("D:/Data_Learning/DTA301_Analysis/Final Project DTA301/Transformation Data.xlsx", sheet = "Data Professional Survey")

#B3: Chạy mô hình hồi quy đa biến
#Y: Biến phụ thuộc, X: Biến độc lập
model_multiple <- lm(`Q6 - How Happy in Current Position? (Work/Life Balance)` ~ 
                       `Q1 - Current Role?` + `Q3 - Average Yearly Salary` + `Q9 - Male/Female?`, data = df)

# Hiển thị kết quả mô hình
summary(model_multiple)

install.packages("ggplot2")
library(ggplot2)

# Biểu đồ hồi quy cho Q3 - Average Yearly Salary
ggplot(df, aes(x = `Q3 - Average Yearly Salary`, y = `Q6 - How Happy in Current Position? (Work/Life Balance)`)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Hồi quy giữa Salary và Happiness", x = "Average Yearly Salary", y = "Happiness")



#--------------------------------
model <- lm(`Q7 - How difficult to break into Data?` ~ `Q10 - Current Age`, data = df)
# Xem kết quả
summary(model)




