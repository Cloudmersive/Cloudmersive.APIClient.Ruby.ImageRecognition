Remove-Item –path ./client –recurse
Remove-Item *.gem
Remove-Item ./client/*.gem
& java -jar swagger-codegen-cli.jar generate -i https://api.cloudmersive.com/swagger/api/image -l ruby -o client -c packageconfig.json
#(Get-Content ./client/src/api/ConvertDocumentApi.js).replace('var returnType = Object;', "var returnType = 'Blob';") | Set-Content ./client/src/api/ConvertDocumentApi.js
#(Get-Content ./client/src/api/ConvertWebApi.js).replace('var returnType = Object;', "var returnType = 'Blob';") | Set-Content ./client/src/api/ConvertWebApi.js

(Get-Content ./client/cloudmersive-image-recognition-api-client.gemspec).replace('`find *`.split("\n").uniq.sort.select{|f| !f.empty? }', "Dir['./**/*']") | Set-Content ./client/cloudmersive-image-recognition-api-client.gemspec
#& npm build ./client


#& npm build ./client

Push-Location
& cd ./client

& gem build ./cloudmersive-image-recognition-api-client.gemspec

Pop-Location