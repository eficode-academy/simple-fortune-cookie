#Specifies the base image for Docker container
FROM golang:latest

#Sets the working directory  inside the container to '/home' :)
WORKDIR /home

#This line adds the contents of the current directory (the context) into the /home/ directory 
ADD . /home/

#This line compiles a Go application located in the current directory (.) and produces an executable binary named frontend
RUN go build -o frontend .

#his line indicates that the container will expose port 8000.
EXPOSE 8080

#This line specifies the default command that will be executed when the container is run. In this case, it sets the entry point to the /home/frontend
ENTRYPOINT ["/home/frontend"]