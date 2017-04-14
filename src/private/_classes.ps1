if(!$NancyPSRoot) {
    $NancyPSRoot = $PSScriptRoot
}

Add-Type -Path $NancyPSRoot\lib\Nancy.dll
Add-Type -Path $NancyPSRoot\lib\Nancy.Hosting.Self.dll

Add-Type -Path $NancyPSRoot\NancyPS.cs -ReferencedAssemblies Microsoft.CSharp, ([Nancy.NancyModule].Assembly)

# You should add more of these ...
Set-NancyHandler -Path "/" -Handler { "Welcome to Nancy" }