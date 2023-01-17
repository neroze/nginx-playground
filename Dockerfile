FROM nginx:latest

# Copy the nginx configuration file to the container
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./apps /usr/share/nginx/html/apps/

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
# Make the nginx config file rewritable
# RUN chmod a+w /etc/nginx/nginx.conf

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
