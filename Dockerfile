# ---------- BUILD STAGE ----------
    FROM node:18 as build

    WORKDIR /app
    COPY package*.json ./
    RUN npm install
    COPY . .
    RUN npm run build
    
    # ---------- NGINX STAGE ----------
    FROM nginx:alpine
    
    RUN rm -rf /etc/nginx/conf.d/default.conf
    
    # ← use nginx.app.conf not nginx.conf
    COPY nginx.app.conf /etc/nginx/conf.d/default.conf
    
    COPY --from=build /app/dist /usr/share/nginx/html
    
    EXPOSE 80
    CMD ["nginx", "-g", "daemon off;"]