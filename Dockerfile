# Menggunakan base image Node.js 14
FROM node:14

# Mengatur direktori kerja container ke /app
WORKDIR /app

# Meng-copy package.json dan package-lock.json ke direktori /app/
COPY package.json package-lock.json /app/

# Meng-copy file index.js ke direktori /app/
COPY index.js /app/

# Menjalankan perintah npm install untuk menginstal dependencies dari package.json
RUN npm install

# Mengekspos port 3001 untuk koneksi dari luar container
EXPOSE 3001

# Execute aplikasi Node.js
CMD ["node", "index.js"]