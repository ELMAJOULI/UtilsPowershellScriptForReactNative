﻿
function New-RnComp{
param(
    [string]$Name
)
if ($Name){ 
    New-Item ./$Name -ItemType Directory;
    New-Item ./$Name/style.js -ItemType File;
    Get-Content C:\project\powershellScript\style.js | Out-File -FilePath ./$Name/style.js
    New-Item ./$Name/index.js -ItemType File;
    New-Item ./$Name/message.js -ItemType File;
   }
else {
    Write-Error -Message "Component Name is mandatory !!"
    }
}
