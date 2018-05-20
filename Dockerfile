﻿FROM microsoft/dotnet:2.1.300-preview2-sdk-alpine
WORKDIR /
COPY . .
RUN dotnet restore
RUN dotnet build
RUN dotnet test --no-build Build.Tests