# ---------- BUILD STAGE ----------
    FROM node:18 as build

    WORKDIR /app
    
    COPY package*.json ./
    RUN npm install
    
    COPY . .
    
    RUN npm run build
    
    
    # ---------- NGINX STAGE ----------
    FROM nginx:alpine
    
    # remove default nginx config
    RUN rm -rf /etc/nginx/conf.d/default.conf
    
    # copy custom nginx config
    COPY nginx.conf /etc/nginx/conf.d/default.conf
    
    # copy react build
    COPY --from=build /app/dist /usr/share/nginx/html
    
    EXPOSE 80
    
    CMD ["nginx", "-g", "daemon off;"]