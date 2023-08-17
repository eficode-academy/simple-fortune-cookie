#Specifies the base image for Docker container
FROM golang:latest

#Sets the working directory  inside the container to '/home' :)
WORKDIR /home

#This line adds the contents of the current directory (the context) into the /home/ directory 
ADD . /home/

#This line compiles a Go application located in the current directory (.) and produces an executable binary named backend
RUN go build -o backend .

#his line indicates that the container will expose port 8000.
EXPOSE 9000

#This line specifies the default command that will be executed when the container is run. In this case, it sets the entry point to the /home/backend
ENTRYPOINT ["/home/backend"]