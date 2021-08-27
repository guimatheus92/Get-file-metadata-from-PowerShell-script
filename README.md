# Get file metadata from Powershell script

A document repository can also be found in my profile article at [Medium](https://guimatheus92.medium.com/get-file-metadata-from-powershell-script-1676c5633394 "Medium").

------------
The main file to get the final result is the filename GETMETADATA_CSV.ps1, from this file you will access another powershell script (explained both below and in my Medium article), and then export the result into a CSV file.

The first step is to download a powershell script that has the function to access this information from the link at [Get-FileMetadata](https://www.powershellgallery.com/packages/VcRedist/1.3.7.60/Content/Private%5CGet-FileMetadata.ps1 "Get-FileMetadata").

If you want, you can change the folder where you want to get the metadata from and also to download the metadata to a CSV file
```shell
# Defines the directory where the files will be, to get their metadata
$FilePath = "C:\"

# Defines the directory and name of the file to be exported to the CSV file
$Dir = "C:\METADATA_CSV.csv"
```
