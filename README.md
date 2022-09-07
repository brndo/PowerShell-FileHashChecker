# PowerShell-FileHashChecker
Use PowerShell to check the file hashes of programs and ISOs downloaded from the internet. This will only be of use if you are getting the file hash along with files you download from the internet so you can make sure they have not been tampered with.  A determined attacker can still modify the file hash on the website to match that of the new file hash. 

## Checking Your Hashes
According to [Microsoft](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-filehash#:~:text=A%20hash%20value%20is%20a,the%20contents%20of%20a%20file), "A hash value is a unique value that corresponds to the content of the file. Rather than identifying the contents of a file by its file name, extension, or other designation, a hash assigns a unique value to the contents of a file."

We are going to be using the built-in Get-FileHash cmdlet to calculate the file hash of the file we downloaded and do a comparison against the file hash provided from the website that the file was downloaded from.


