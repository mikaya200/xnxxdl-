FROM mikaya200/sewqueen:fullcontrol

RUN git clone https://github.com/mikaya200/xnxxdl/root/xnxx
WORKDIR /root/xnxx/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "xnxx.js"
