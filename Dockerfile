FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base

RUN mkdir /app
WORKDIR /app

COPY ./webapp/bin/Debug/net5.0 ./
COPY ./config.sh ./

RUN bash config.sh

EXPOSE 80
ENTRYPOINT ["dotnet", "webapp.dll"]