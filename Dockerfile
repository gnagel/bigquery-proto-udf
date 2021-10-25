FROM node:slim
WORKDIR /app
ADD https://cdn.rawgit.com/dcodeIO/protobuf.js/6.X.X/dist/protobuf.min.js               /data/protobuf.min.js
ADD https://raw.githubusercontent.com/grpc/grpc/master/examples/protos/helloworld.proto /proto/helloworld.proto
RUN yarn add protobufjs@6.11.2
RUN yarn run pbjs --target=static --path=/proto --out=/data/helloworld.js --keep-case --force-long /proto/helloworld.proto
RUN ls -lh /data
