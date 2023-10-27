## Langkah-langkah untuk mendeploy rabbitmq dengan Helm Chart:
1. Instal helm 
```
brew install helm
```
2. Menambah repository helm chart dari Rabbitmq 
```
helm repo add bitnami https://charts.bitnami.com/bitnami
```
3. Update repositori chart lokal 
```
helm repo update
```
4. Buat manifest konfigurasi untuk rabbitmq dengan file value.yml
5. Install rabbitmq
```
helm install my-rabbitmq bitnami/rabbitmq -f value.yaml
```
6. Mengakses dari local machine dengan port-forwarding, mengekspos port 15672 di cluster ke port 15672 di host/localhost
```
kubectl port-forward svc/my-rabbitmq 15672:15672
```