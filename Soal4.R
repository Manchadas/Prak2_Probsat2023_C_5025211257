#Jawaban Soal NO 4

#Sub bagian A
library(ggplot2)

# Membuat dataframe dari data yang diberikan
data <- data.frame(
  Glass = c("A", "A", "A", "B", "B", "B", "C", "C", "C", "A", "A", "A", "B", "B", "B", "C", "C", "C", "A", "A", "A", "B", "B", "B", "C", "C", "C"),
  Temp = c(100, 100, 100, 100, 100, 100, 100, 100, 100, 125, 125, 125, 125, 125, 125, 125, 125, 125, 150, 150, 150, 150, 150, 150, 150, 150, 150),
  Light = c(580, 568, 570, 550, 530, 579, 546, 575, 599, 1090, 1087, 1085, 1070, 1035, 1000, 1045, 1053, 1066, 1392, 1380, 1386, 1328, 1312, 1299, 867, 904, 889)
)

# Membuat plot scatter dengan warna berdasarkan keluaran cahaya
ggplot(data, aes(x = Glass, y = Temp, color = Light)) +
  geom_point() +
  labs(x = "Glass", y = "Temp", color = "Light")

#Sub bagian B
# Melakukan uji ANOVA dua arah
anova_result <- aov(Light ~ Glass * Temp, data = data)

# Menampilkan hasil uji ANOVA
summary(anova_result)

#Sub bagian C
# Menghitung mean dan standar deviasi keluaran cahaya untuk setiap perlakuan
table_result <- aggregate(Light ~ Glass + Temp, data = data, FUN = function(x) c(mean = mean(x), sd = sd(x)))

# Menampilkan tabel
table_result