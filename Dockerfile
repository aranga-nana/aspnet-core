FROM microsoft/dotnet:1.1.0-runtime

COPY /build /app

WORKDIR /app


EXPOSE 5000/tcp

ENTRYPOINT ["dotnet", "WebApi.dll", "--server.urls", "http://*:5000"]
