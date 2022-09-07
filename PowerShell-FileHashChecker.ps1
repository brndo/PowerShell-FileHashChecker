Function Compare-FileHash {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$FilePath,
        [string]$Algorithm,
        [string]$Hash
    )
    
    ## Test to see if path exists first
    if (Test-Path -Path $FilePath){
            $HashResults = Get-FileHash -Path $FilePath -Algorithm $Algorithm
            $ComputedHash = $HashResults.Hash
    
            if ($ComputedHash -eq $Hash){
                Write-Host "
                Hashes match: 
                Computed Hash
                $ComputedHash
                Provided Hash:
                $Hash
                "
            } else {
                Write-Error "
                Hashes Don't Match: 
                Computed Hash
                $ComputedHash
                Provided Hash:
                $Hash
                "
            }
    
        }
    ## If Path does not exist, throw error    
    else {
        Write-Error "Cannot find file: $FilePath"
    }
    
}