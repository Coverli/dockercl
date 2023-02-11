echo FROM ubuntu:20.04 > Dockfile
echo COPY . /app >> Dockfile
echo WORKDIR /app >> Dockfile
echo RUN echo "start" >> Dockfile
echo CMD echo "Hello World!" >> Dockfile
echo EXPOSE 4444 >> Dockfile

docker image build -t helloworld .

docker container run -p 8000:4444 -it helloworld
