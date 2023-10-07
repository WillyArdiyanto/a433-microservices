# Buat image Docker dari Dockerfile dari kriteria 2
docker build -t item-app:v1 .

export CR_PAT=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
# Lihat daftar image
docker images

# Ubah nama image agar sesuai dengan format Github Packages
docker image tag item-app:v1 ghcr.io/willyardiyanto/item-app:v1

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u WillyArdiyanto --password-stdin

# Unggah image ke Docker Hub
docker push ghcr.io/willyardiyanto/item-app:v1
