Remove-Item –path ./client –recurse
Remove-Item *.gem
Remove-Item ./client/*.gem

Invoke-WebRequest -Uri 'https://api.cloudmersive.com/image/docs/v1/swagger' -OutFile '.\image-api-swagger.json'
(Get-Content .\image-api-swagger.json).replace('localhost', "api.cloudmersive.com") | Set-Content .\image-api-swagger.json
(Get-Content .\image-api-swagger.json).replace('"http"', '"https"') | Set-Content .\image-api-swagger.json

& java -jar swagger-codegen-cli-2.4.14.jar generate -i .\image-api-swagger.json -l ruby -o client -c packageconfig.json
#(Get-Content ./client/src/api/ConvertDocumentApi.js).replace('var returnType = Object;', "var returnType = 'Blob';") | Set-Content ./client/src/api/ConvertDocumentApi.js
#(Get-Content ./client/src/api/ConvertWebApi.js).replace('var returnType = Object;', "var returnType = 'Blob';") | Set-Content ./client/src/api/ConvertWebApi.js

(Get-Content ./client/cloudmersive-image-recognition-api-client.gemspec).replace('`find *`.split("\n").uniq.sort.select { |f| !f.empty? }', "Dir['./**/*']") | Set-Content ./client/cloudmersive-image-recognition-api-client.gemspec
#& npm build ./client


#& npm build ./client

Push-Location
& cd ./client

& gem build ./cloudmersive-image-recognition-api-client.gemspec

Pop-Location