# 使用s390x/node:18.18.2-alpine作为基础镜像
FROM s390x/node:18.18.2-alpine

# 安装Nginx和Certbot
RUN apk --update add nginx certbot && \
    rm -rf /var/cache/apk/*

# 复制Nginx配置文件到容器
#COPY nginx.conf /etc/nginx/nginx.conf

# 暴露80和443端口
EXPOSE 80
EXPOSE 81
EXPOSE 443

# 启动Nginx服务和Node.js应用
CMD ["nginx", "-g", "daemon off;"]
