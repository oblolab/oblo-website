FROM nginx:alpine
COPY index.html favicon.svg og-image.jpg robots.txt sitemap.xml /usr/share/nginx/html/
EXPOSE 80
