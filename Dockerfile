FROM node:18        

RUN mkdir -p /app

 # Sets the working directory in the container
WORKDIR /app            

# copy the dependencies file to the working directory
COPY package.json /app  

 # Install dependencies
RUN npm install -g npm@8.9.0  

# Copy the content of the local src directory to the working directory
COPY . /app       
EXPOSE 4200
CMD ["npm", "run", "start"]
