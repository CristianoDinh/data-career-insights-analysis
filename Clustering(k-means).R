# Cài đặt các thư viện cần thiết
install.packages("ggplot2")

library(ggplot2)

# Bước 1: Đọc dữ liệu từ file Excel
file_path <- "D:/Data_Learning/DTA301_Analysis/Final Project DTA301/Transformation Data.xlsx"
data <- read_excel(file_path, sheet = "Data Professional Survey")


# Bước 2: Chọn cột liên quan đến vai trò, mức lương, và ngôn ngữ lập trình
df <- data[, c("Q1 - Current Role?", "Q3 - Average Yearly Salary", "Q5 - Programming Language")]

# Bước 3: Tạo các biến số học
#3.1 Đổi các mức lương về trung bình của khoảng lương
df$Salary_Mid <- as.numeric(df$"Q3 - Average Yearly Salary")

#3.2 Mã hóa ngôn ngữ lập trình (chỉ chọn Python=1 và R=2 cho chính xác), ngôn ngữ khác = 0
df$Language <- ifelse(df$`Q5 - Programming Language` == "Python", 1, ifelse(df$`Q5 - Programming Language` == "R", 2, 0))


# Bước 4: Áp dụng K-means clustering với 3 cụm
set.seed(123)
df_numeric <- df[, c("Salary_Mid", "Language")]  # Chọn các biến số học
kmeans_result <- kmeans(df_numeric, centers = 3, nstart = 25)

# Bước 5: Thêm kết quả phân cụm vào dataframe và chuẩn bị cho vẽ biểu đồ
df$Cluster <- as.factor(kmeans_result$cluster)

# Bước 6: Trực quan hóa kết quả
# 6.1: Trực quan hóa bằng Bar Plot
ggplot(df, aes(x = Cluster, fill = `Q1 - Current Role?`)) +
  geom_bar(position = "dodge") +
  labs(title = "Số lượng vai trò trong mỗi cụm",
       x = "Cụm", y = "Số lượng") +
  theme_minimal()
# 6.2: Trực quan hóa bằng Boxplot
ggplot(df, aes(x = Cluster, y = Salary_Mid, fill = Cluster)) +
  geom_boxplot() +
  labs(title = "So sánh mức lương giữa các cụm",
       x = "Cụm", y = "Mức lương trung bình") +
  theme_minimal()
