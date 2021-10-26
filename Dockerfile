#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
COPY bin/net5.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "ComicBookGallery.dll"]
