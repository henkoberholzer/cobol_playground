$currentDir=Get-Location
docker run -v $currentDir/src:/development/src/ -i -t --name coboldev01 coboldev /bin/bash