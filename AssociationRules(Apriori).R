#Bước 1: Cài đặt thư viện
install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
library(readxl)

#Bước 2: Đọc dữ liệu từ file Excel
file_path <- "D:/Data_Learning/DTA301_Analysis/Final Project DTA301/Transformation Data.xlsx"  
df <- read_excel(file_path, sheet = "Data Professional Survey")

#Bước 3: Chuẩn bị dữ liệu: Chọn các cột muốn phân tích và chuyển đổi thành các yếu tố (factors):
#3.1: Chọn các cột cần thiết
df_selected <- df[, c("Q1 - Current Role?", "Q4 - Which industry ?", "Q5 - Programming Language")]

#3.2: Loại bỏ các giá trị NA
df_selected <- na.omit(df_selected)

#3.3: Chuyển đổi dữ liệu thành các yếu tố
df_selected[] <- lapply(df_selected, as.factor)

#Bước 4: Chuyển đổi dữ liệu sang dạng transactions:
library(arules)
# Chuyển đổi thành dạng transactions
transactions <- as(df_selected, "transactions")

#Bước 5: Áp dụng thuật toán Apriori:
# Tìm các tập hợp mục phổ biến với ngưỡng hỗ trợ tối thiểu là 0.1 (10%)
rules <- apriori(transactions, parameter = list(support = 0.1, confidence = 0.6))


#Bước 6: Trực quan hóa kết quả:
library(arulesViz)
# Trực quan hóa các quy tắc với biểu đồ scatter plot
plot(rules, method = "scatterplot", measure = c("support", "confidence"), shading = "lift")
