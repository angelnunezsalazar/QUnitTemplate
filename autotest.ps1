
function InstallPsWatch(){
	<#
	$m = Get-Module -List pswatch 
	if(!$m) {
		Write-Host "You don't have the pswatch cmdlet installed. Let me handle that for you."
		iex ((new-object net.webclient).DownloadString("http://bit.ly/Install-PsWatch"))
	}
	#>
}

function RunTests()
{
	$dateStamp = get-date -uformat "%Y-%m-%d@%H:%M:%S"
    write-host "RUNNING TESTS"
    write-host $dateStamp
    write-host "......"
    & "C:\Program Files (x86)\phantomjs\phantomjs.exe" lib\phantomjs-qunit.js test-runner.html
}


InstallPsWatch
RunTests

Import-Module pswatch
watch | %{
    RunTests 
}



