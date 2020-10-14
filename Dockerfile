FROM nginx:latest

MAINTAINER zjnblank.top

ADD default.conf /etc/nginx/conf.d/default.conf

ADD setup.sh start.sh

ADD dist /usr/share/nginx/html

EXPOSE 80

#ENTRYPOINT ["java", "-jar", "/app.jar"]
#CMD ["nohup", "java", "-jar", "-Duser.timezone=GMT+08", "/app.jar", ">", "/apperr.log", "2>&1&"]
CMD ["nginx", "-g", "daemon off;"]
