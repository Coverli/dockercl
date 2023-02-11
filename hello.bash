sudo touch Dockfile
sudo ls -a
sudo echo FROM ubuntu:20.04 >> Dockfile
sudo echo COPY . /app >> Dockfile
sudo echo WORKDIR /app >> Dockfile
sudo echo RUN echo "start" >> Dockfile
sudo echo CMD echo "Hello World!" >> Dockfile
sudo echo EXPOSE 4444 >> Dockfile
sudo cat a

sudo docker image build -t helloworld .

sudo docker container run -p 8000:4444 -it helloworld
