## Running Locally using GKE

Berikut ini untuk flow ci/cd test pintu : github actions -> GCR -> GKE 

1. pertama saya buat code saya dengan menggunakan nodejs 12
2. saya buat GKE cluster terlebih dahulu dengan nama autopilot-cluster-1 dan region asia-southeast2 (jakarta)
3. lalu saya buat GCR untuk registry nya dengan nama image testcicd dan saya melalukan push terlebih dahulu dari local untuk mengecek apakah sudah konek atau belum 
4. saya buat script dengan nama deployment.yml untuk menjalankan kubernetes dari gcr nya, untuk mengambil image yg ada di gcr
5. saya membuat script dengan nama service.yml lebih untuk mengarahkan target port 
6. lalu untuk bisa terkoneksi antara github saya dan gke serta gcr saya, saya buat permsission terlebih dahulu, seperti saya buat credentials antara lain : project id saya dan secret google aplication yg berupa json, saya taruh di github -> settings -> secret and variables -> actions saya buat untuk project id saya dengan nama = GOOGLE_PROJECT dan untuk secret credentials saya buat dengan nama = GOOGLE_APPLICATION_CREDETIALS
7. ketika sudah selesai semua lalu saya buat untuk ingress nya di GKE dan hasil nya tugas saya bisa di akses dengan ip = http://34.117.146.123/?weight=30&height=40 (contoh saja, bisa di ganti sesuai tinggi dan berat badan). 

8. untuk proses ci/cd saya lampirkan berbentuk screenshoot dan saya lampirkan di email 