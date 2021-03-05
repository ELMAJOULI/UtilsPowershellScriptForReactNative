## This ps script is dedicated to creating a component setup
## Configuration :
- download or clone this repo 
- go to powershell and tap $PROFILE
- open you profile file (if not exist create one [see me](https://www.howtogeek.com/126469/how-to-create-a-powershell-profile/)) 
- copy the absolute path of createComponent.psm1 
- add onto your profile this line `` 
Import-Module "[your cloned repo path]\createComponent.psm1" -Force 
``
## Example 
ps>``
New-RnComp -Name Input
``

ps>``
New-RnComp -Name Users -Store 1
``
## Happy Hacking :D
