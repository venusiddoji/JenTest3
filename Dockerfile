FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base

RUN mkdir /app
WORKDIR /app

COPY ./webapp/bin/Debug/net5.0 ./

EXPOSE 80
ENTRYPOINT ["dotnet", "webapp.dll"]
