param (
	[string]$FontName,
	[string]$FontFile,
	[switch]$Help
);


####################################
# NULL comes in a number of shapes and forms in powershell 
function isNull($obj) {
	if ( ($obj -eq $null) -or
		 (($obj -is [String]) -and ($obj -eq [String]::Empty)) -or
		 ($obj -is [DBNull]) -or
		 ($obj -is [System.Management.Automation.Language.NullString]) )
	{ return $true; }	
	return $false;
}
####################################
function printHelp {
	#the script name might be 'InstallConsoleFont' but it might have been changed, too
	$scriptName = $MyInvocation.MyCommand.Name
	write-host " "
	write-host "  Usage: $scriptName -FontName <fontname> -FontFile <truetypefontfile>"
	write-host "         add font <fontname> in <truetypefontfile> to console fonts registry key"
	write-host "         <truetypefontfile> must be present in system fonts directory"
	write-host "         only truetype (.ttf) fonts may be installed to the powershell terminal"
	write-host " "
	write-host "  Usage: $scriptName -Help"
	write-host "         print this message"
	write-host " "
	exit 0;
}
####################################

if ( 	($Help) -or 
		(isNull($FontName)) -or
		(isNull($FontFile)) ) 	{	
	printHelp
}

$key = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont"

## Find out if $FontName is installed on the system
if(!(test-path (join-path $env:windir "Fonts\$FontFile")))
{
        write-host "The $FontName font is not installed on the system."
        break
}
 
## Determine if $FontName is already installed as a command window font
$installed = get-itemproperty $key |
             get-member |
             where-object { $_.Name -match "^0+$" } |
             where-object { $_.Definition -match "$FontName" }
             
if($installed -ne $null)
{
    write-host "The $FontName font is already installed as a command window font."
		break
}
 
## Find out what the largest string of zeros is
$zeros = (get-itemproperty $key |
         get-member |
         where-object { $_.Name -match "^0+$" } |
         measure-object).Count
 
## Install the font
new-itemproperty $key -Name ("0" * ($zeros + 1)) -Type string -Value "$FontName"
write-host "$FontName font installed successfully as a command window font."
