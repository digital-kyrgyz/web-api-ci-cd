FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

WORKDIR /app

COPY . . 

RUN dotnet publish -c Release -o /out

#runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app
COPY --from=build-env /out .

ENTRYPOINT ["dotnet", "WebApi.dll"]
