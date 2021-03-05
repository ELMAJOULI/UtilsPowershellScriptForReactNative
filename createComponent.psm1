
function New-RnComp{
param(
    [string]$Name,
    [boolean]$Store
    )
if ($Name){ 
    New-Item ./$Name -ItemType Directory;
    
    Copy-Item $PSScriptRoot/style.js -Destination ./$Name/style.js
    Copy-Item $PSScriptRoot/index.js -Destination ./$Name/index.js
    Copy-Item $PSScriptRoot/messages.js -Destination ./$Name/message.js
    
    if($Store){
     Copy-Item $PSScriptRoot/store  -Destination ./$Name/ -Recurse
    }

   }
else {
    Write-Error -Message "Component Name is mandatory !!"
    }
}
