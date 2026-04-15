FROM node:24.14.1 AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=builder /app/dist/portfolio-frontend/browser/* /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]