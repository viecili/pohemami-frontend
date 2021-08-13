FROM node:14-alpine AS builder
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm ci --silent
RUN npm install
COPY . ./
RUN npm run build

# production environment
# FROM nginx:stable-alpine # This is causing some grief here
FROM twalter/openshift-nginx:stable
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 8081
CMD ["nginx", "-g", "daemon off;"]

