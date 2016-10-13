FROM node:6.8.0-wheezy
RUN mkdir -p /workspace/
COPY package.json server.js /workspace/
COPY app/ /workspace/app/
WORKDIR /workspace/
RUN npm install
EXPOSE 8080
CMD npm start

# Create image:
# docker build -t d4k/maze:v1 .

# Start container (from Git root directory)
# docker run -it -p 8080:8080 -v $(pwd)/app/examples/:/workspace/app/examples/ d4k/maze:v1
