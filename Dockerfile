FROM node:18

WORKDIR /app

RUN npm install -g @vue/cli

EXPOSE 3000

CMD ["bash"]
