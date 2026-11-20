# Yaklaşık 45 MB boyutunda, hafif ve kararlı Nginx web sunucusu imajı
FROM nginx:alpine

# Nginx'in varsayılan karşılama dosyalarını temizle
RUN rm -rf /usr/share/nginx/html/*

# Proje dosyalarını (index.html, css, js, bootstrap) Nginx kök dizinine kopyala
COPY . /usr/share/nginx/html

# Konteynerin HTTP trafiği için 80 portunu dışarıya aç
EXPOSE 80

# Nginx'i konteyner içinde ön planda (daemon off) çalıştır
CMD ["nginx", "-g", "daemon off;"]