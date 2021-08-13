# Pohemami  Client

## Rundown
This is the client (frontend) repository for the Pohemami project for the IBM Cloud Native Bootcamp. This is a relatvely simple application whereby a page load/refresh will perform an HTTP GET request against the backend to retrieve some data in and display it a card-like fashion to the user.

Currently, I am simply requesting data from this publicly available endpoint: http://jsonplaceholder.typicode.com/users

The next steps involves integration with the backend with the endpoints are ready and exposed.

## Instructions

1) Clone the repository: git clone https://github.com/Mattar555/pohemami-frontend.git
2) Build an image from the Dockerfile provided: docker build . -t pohemami/client
3) Run the image: docker run -p 49610:80 -d pohemami/client (I used a random most likely unused port here for the mapping)
4) Visit the following: http://localhost:49610

## Catributors

1) Sylvester the Cat
2) The Pink Panther
3) Apache Tomcat
4) Felix the Cat
5) Garfield
6) Tom Cat
7) Top Cat
