# Buat image Docker dari Dockerfile dari kriteria 2
docker build -t karsajobs-ui:latest .

# Lihat daftar image
docker images

# Ubah nama image agar sesuai dengan format Github Packages
docker image tag karsajobs-ui:latest ghcr.io/willyardiyanto/karsajobs-ui:latest

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u WillyArdiyanto --password-stdin

# Unggah image ke Docker Hub
docker push ghcr.io/willyardiyanto/karsajobs-ui:latest
