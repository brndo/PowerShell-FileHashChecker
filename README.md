# PowerShell-FileHashChecker
Use PowerShell to check the file hashes of programs and ISOs downloaded from the internet. This will only be of use if you are getting the file hash along with files you download from the internet so you can make sure they have not been tampered with.  A determined attacker can still modify the file hash on the website to match that of the new file hash. 

## Checking Your Hashes
According to [Microsoft](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-filehash#:~:text=A%20hash%20value%20is%20a,the%20contents%20of%20a%20file), "A hash value is a unique value that corresponds to the content of the file. Rather than identifying the contents of a file by its file name, extension, or other designation, a hash assigns a unique value to the contents of a file."

We are going to be using the built-in Get-FileHash cmdlet to calculate the file hash of the file we downloaded and do a comparison against the file hash provided from the website that the file was downloaded from.

## Module Instructions
Open PowerShell, run the script to put the function in memory.  Next run the function with the following parameters:

    Compare-FileHash -FilePath C:\Users\Me\Downloads\File.exe -Algorithm XXXX -Hash whateverwasonthewebsiteyoudownloadedthefilefrom

The available Algorithms in the Get-FileHash cmdlet are:

- SHA1
- SHA256
- SHA384
- SHA512
- MD5

If the hashes match, you will get a message that states this along with showing the values of each hash:

                Hashes match:
                Computed Hash
                C3396B065CAE3078DDD9F70899AE89AE21A02ACDCD1667D32951F9060EA7D120
                Provided Hash:
                c3396b065cae3078ddd9f70899ae89ae21a02acdcd1667d32951f9060ea7d120

Otherwise it will throw an error saying the don't match.