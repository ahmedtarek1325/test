FROM mcr.mircorsoft.com/dotnet/sdk:6.0. AS build-env
WORKDIR /src

COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o out

FROM mcr.mircorsoft.com/dotnet/sdk:6.0. AS build-env
WORKDIR /sr
COPY --frombuild-env /src .
ENTRYPOINT ["dotnet","app-dotnet.dll"]
