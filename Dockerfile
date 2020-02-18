FROM  node:10

WORKDIR /user/src/app

COPY package*.json ./
COPY .gitignore ./

RUN apt-get install git
RUN npm install
RUN git config --global user.name "Vlad Koroluk"
RUN git config --global user.email vladkorolyuki@gmail.com
RUN git init
RUN git add .
RUN git commit -a -m 'master'
RUN git clone https://github.com/fixbew/nodejs.git 



COPY . .

EXPOSE 8080

CMD ["node", "server.js"]
