
# To execute the script without agreeing with the execution policy
Set-ExecutionPolicy Bypass -Scope Process

# Defines the directory where the PS1 file will be, which has the function to discover the file metadata
cd C:\

# Load the PS1 file
.\Get-FileMetaDataReturnObject.ps1

# Import the PS1 file to access the functions
Import-module .\Get-FileMetaDataReturnObject.ps1 -Force

# Defines the directory where the files will be, to get their metadata
$FilePath = "C:\"

# Defines the directory and name of the file to be exported to the CSV file
$Dir = "C:\METADATA_CSV.csv"

# Loads photo metadata into the variable
$Metadata = Get-FileMetaData -folder $FilePath

# Exports the metadata of the files found in the directory, to a CSV file
$Metadata | 
	Export-Csv -Path $Dir -NoTypeInformation -Encoding UTF8