sudo touch Dockerfile
sudo ls -a
sudo echo FROM ubuntu:20.04 >> Dockerfile
sudo echo COPY . /app >> Dockerfile
sudo echo WORKDIR /app >> Dockerfile
sudo echo RUN echo "start" >> Dockerfile
sudo echo CMD echo "Hello World!" >> Dockerfile
sudo echo EXPOSE 4444 >> Dockerfile
sudo cat Dockerfile
sudo pwd

sudo docker image build -t helloworld .

sudo docker container run -p 8000:4444 -it helloworld
