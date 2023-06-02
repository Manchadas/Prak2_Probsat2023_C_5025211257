#Jawaban Soal NO 2

#Sub bagian A
library(stats)

sampel <- c(23500) # Rata-rata sampel
n <- 100 # Ukuran sampel
sd <- 3000 # Standar deviasi sampel

# Menjalankan tes satu pihak dengan menghitung z-score
z_score <- (sampel - 25000) / (sd/sqrt(n))
p_value <- pnorm(z_score)

cat("A.\n")
# Menampilkan hasil
if (p_value < 0.05) {
  cat("Klaim bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun ditolak dengan tingkat kepercayaan 95%.\n")
} else {
  cat("Tidak cukup bukti untuk menolak klaim bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun dengan tingkat kepercayaan 95%.\n")
}
cat("P-value:", p_value, "\n")

cat("C.\n")
cat("Kesimpulan yang dapat diambil dari p-value ialah berdasarkan data sampel yang diberikan, dengan tingkat kepercayaan 95%, tidak cukup bukti statistik untuk menolak klaim bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. P-value sebesar", p_value, "menunjukkan bahwa ada kemungkinan kecil untuk mendapatkan sampel dengan rata-rata sejauh 23.500 kilometer jika klaim tersebut benar. Oleh karena itu, tidak ada cukup bukti untuk menyimpulkan bahwa rata-rata jarak yang ditempuh mobil kurang dari 25.000 kilometer per tahun berdasarkan data sampel yang diberikan.")








