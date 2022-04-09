# vuexproject

## Build image
docker build -f Dockerfile -t vuexproject .

## Run container
docker run -d -p 80:8080 -p 3000:3000 vuexproject