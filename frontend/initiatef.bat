@echo off
title Frontend Server
echo Initiating frontend server
set NODE_OPTIONS=--openssl-legacy-provider
npm install && npm run start

pause
