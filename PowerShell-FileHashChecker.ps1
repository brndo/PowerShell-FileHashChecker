Function Check-FileHash {
[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]$FilePath,
    [string]$Algorithm,
    [string]$Hash
)

## Test to see if path exists first
if (Test-Path -Path $FilePath){
        $ComputedHash = Get-FileHash -Path $FilePath -Algorithm $Algorithm

    }
## If Path does not exist, throw error    
else {
    Write-Error "Cannot find file: $FilePath"
}

}
