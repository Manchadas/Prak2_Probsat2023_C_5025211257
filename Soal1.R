#Jawaban Soal NO 1

#Sub bagian A

# Data sebelum dan sesudah aktivitas
sebelum <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
sesudah <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

# Selisih antara data sebelum dan sesudah aktivitas
selisih <- sesudah - sebelum

# Standar Deviasi dari selisih
standar_deviasi <- sd(selisih)

cat("A.\n")
print(standar_deviasi)

#Sub bagian B

# Uji t berpasangan
t_value <- t.test(sesudah, sebelum, paired = TRUE)$statistic
p_value <- t.test(sesudah, sebelum, paired = TRUE)$p.value

t_value
p_value

cat("B.\n")
print(t_value)
print(p_value)


#Sub bagian C
alpha <- 0.05

if (p_value < alpha) {
  hasil <- "Terdapat pengaruh yang signifikan secara statistika"
} else {
  hasil <- "Tidak terdapat pengaruh yang signifikan secara statistika"
}
cat("C.\n")
print(hasil)

