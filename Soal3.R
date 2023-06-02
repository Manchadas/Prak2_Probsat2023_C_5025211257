#Jawaban Soal NO 3

#Sub bagian A
cat("A. H0 (Hipotesis Nol): Tidak ada perbedaan pada rata-rata antara X dan Y.\n")
cat("   H1 (Hipotesis Alternatif): Terdapat perbedaan pada rata-rata antara X dan Y.\n")

#sub bagian B
# Data
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

# Hitung sampel statistik
t_stat <- t.test(x, y)$statistic
cat("B.\n")
print(t_stat)

#sub bagian C
# Lakukan uji t independen
t_test <- t.test(x, y)
p_value <- t_test$p.value

cat("C. \n")
print(p_value)

#sub bagian D
# Nilai kritikal
alpha <- 0.05
critical_value <- qt(1 - alpha/2, df = length(x) + length(y) - 2)
cat("D. \n")
print(critical_value)

#sub bagian E
# Keputusan
if (p_value < alpha) {
  decision <- "Tolak H0. Terdapat perbedaan yang signifikan antara rata-rata X dan Y."
} else {
  decision <- "Terima H0. Tidak ada perbedaan yang signifikan antara rata-rata X dan Y."
}
cat("E. \n")
print(decision)

#sub bagian F
# Kesimpulan
if (p_value < alpha) {
  conclusion <- "Terdapat perbedaan yang signifikan antara rata-rata X dan Y."
} else {
  conclusion <- "Tidak ada perbedaan yang signifikan antara rata-rata X dan Y."
}

cat("F. \n")
print(conclusion)

