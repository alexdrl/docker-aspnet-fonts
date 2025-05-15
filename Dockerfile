# This stage is used when running from VS in fast mode (Default for Debug configuration)
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base

RUN apt-get update && apt-get install -y --no-install-recommends \
	libc6 libicu-dev libfontconfig1 curl \
	&& rm -rf /var/lib/apt/lists/*