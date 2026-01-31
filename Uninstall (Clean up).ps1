Get-Module -Name SqlServer-Version-Management -ListAvailable | ForEach-Object { Write-Host "DELETING $($_.ModuleBase)"; Remove-Item -Path $_.ModuleBase -Recurse -Force -Confirm:$false }


    
