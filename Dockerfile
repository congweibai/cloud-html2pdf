FROM rainabba/nodejs-8-wkhtmltopdf

# confirm installation
RUN wkhtmltopdf --version
RUN npm --version
RUN node --version
# RUN ls -al /usr/bin/

# RUN echo "<h2>Hello World</h2>" | wkhtmltopdf --

RUN npm i -g yarn
COPY . .
RUN yarn 
#--production=true

CMD node lib/index.js
