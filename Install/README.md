## Install module

There are three ways to install the module.

#### Using Install-Module

```powershell
Install-Module "SqlServer-Version-Management"
```
Caution. When a system has hundreds of preinstalled PowerShell modules, Install-Module performance can degrade due to increased resolution time. For instance, Microsoft-hosted build agents on GitHub Actions and Azure DevOps include over 240 modules by default, which can cause Install-Module to take one to two minutes to complete.


#### In-process scope

Load module into current powershell process only. Does not persist the module on disk. Avoid limitations of Install-Module

```powershell
$urlSource = 'https://devizer.github.io/SqlServer-Version-Management/SqlServer-Version-Management.ps1'; 
foreach($attempt in 1..3) { try { iex ((New-Object System.Net.WebClient).DownloadString($urlSource)); break; } catch {sleep 0.1;} }
```

#### Persistent install

Install module files into one of $PSModulePath folder or $PSHOME/Modules/. Avoid limitations of Install-Module

```powershell
$urlSource = 'https://devizer.github.io/SqlServer-Version-Management/Install-SqlServer-Version-Management.ps1'; 
foreach($attempt in 1..3) { try { iex ((New-Object System.Net.WebClient).DownloadString($urlSource)); break; } catch {sleep 0.1;} }
```
