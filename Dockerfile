FROM node:latest

# thư mục làm việc
WORKDIR /usr/src/app

# copy tất cả các file có tên là package.json vào thư mục WORKDIR
COPY package*.json ./

# chạy câu lệnh npm install 
RUN npm install

# copy tất cả các code của project vào thư mục WORKDIR
COPY . .

# projetc sẽ chạy port 8080 trên docker
EXPOSE 8080

# sẽ chạy lệnh để run project
CMD [ "npm","start" ]



# cú pháp build docker:  docker build -t my-node-app:v.0.0.1 .
# nghĩa là : -t = tab , my-node-app:v.0.0.1 mình sẽ tự đặt , . nó sẽ build tất cả có trong thư mục hiện tại

# b1: docker build -t my-node-app:v.0.0.1 .
# b2: docker images hiển thị danh sách images
# b3: cách chạy images lên : docker run -p 4000:8080 my-node-app:v.0.0.1
#  + -p: là port: nó sẽ bind cái port 8080 trên docker thành 4000 trên web của mình
# docker ps show các container đang chạy
#  docker stop container id  thì nó sẽ dừng container lại