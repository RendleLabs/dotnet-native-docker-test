FROM ubuntu:14.04

WORKDIR /app

COPY bin/Debug/dnxcore50/native/dotnet-native-docker-test /app/run

ENTRYPOINT ["./run"]
