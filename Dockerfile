FROM node:20 AS base

### <JANGAN DIGANTI>
ARG STUDENT_NAME
ARG STUDENT_NIM

ENV NUXT_STUDENT_NAME ${STUDENT_NAME}
ENV NUXT_STUDENT_NIM ${STUDENT_NIM}
### </JANGAN DIGANTI>

# TODO: code disini

WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN npm install # or pnpm install if you're using pnpm

COPY . .

RUN npm run build
EXPOSE 80

CMD ["npm", "run", "start"]
