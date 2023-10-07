# Buat image Docker dari Dockerfile dari kriteria 2
docker build -t item-app:v1 .

export CR_PAT = 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
# Lihat daftar image
docker images

# Ubah nama image agar sesuai dengan format Github Packages
docker image tag item-app:v1 ghcr.io/WillyArdiyanto/item-app:v1

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u WillyArdiyanto --password-stdin

# Unggah image ke Docker Hub
docker push ghcr.io/WillyArdiyanto/item-app:v1
