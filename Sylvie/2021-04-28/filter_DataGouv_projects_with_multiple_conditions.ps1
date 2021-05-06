$pattern1 = "^ANR-20" 
$column1 = "Projet.Code_Decision_ANR"

$pattern21 = "Patrimo"
$column21 = "Projet.Resume.francais"

$pattern22 = "Heritag"
$column22 = "Projet.Resume.anglais" 

$pattern31 = "instruments?.{1,20}musique"
$column31 = "Projet.Resume.francais"

$pattern32 = "music.{1,20}instrument"
$column32 = "Projet.Resume.anglais" 

$pattern41 = "arch.{1,3}olog"
$column41 = "Projet.Resume.francais"

$pattern42 = "archeolog"
$column42 = "Projet.Resume.anglais" 


#####################################################

function is_valid($a) {
    return ![string]::IsNullOrWhiteSpace($a)
}

function test1($line) {
    $a = $line.$column1 | Select-string -Pattern $pattern1
    return is_valid($a) 
}
function test2($line) {
    $a1 = $line.$column21 | Select-string -Pattern $pattern21
    $a2 = $line.$column22 | Select-string -Pattern $pattern22
    return is_valid($a1) -or is_valid($a2)
}

function test3($line) {
    $a1 = $line.$column31 | Select-string -Pattern $pattern31
    $a2 = $line.$column32 | Select-string -Pattern $pattern32
    return is_valid($a1) -or is_valid($a2)
}

function test4($line) {
    $a1 = $line.$column41 | Select-string -Pattern $pattern41
    $a2 = $line.$column42 | Select-string -Pattern $pattern42
    return is_valid($a1) -or is_valid($a2)
}

# You may wish to expand the list as willing! :-)  

#####################################################
# Phase 1: Download the DataGouv data into a local file

$url = "https://www.data.gouv.fr/fr/datasets/r/b0ce2c54-68a9-4493-83d7-0721a391fb4f"

$data = "data.xlsx"
$path = "${HOME}/${data}"

$test = Test-Path -Path "$path" -PathType Leaf  # Leaf spécifie qu'on cherche un fichier, pas un répertoire

if ($test) {
    Write-Host("File ${path} already exists")
}
else {
    Write-Host("Loading URL ${url}")
    $WebClient = New-Object net.webclient
    $WebClient.DownloadFile($url, $path)
}

#####################################################
# Phase 2: Install the ImportExcel Module
# https://github.com/dfinke/ImportExcel

$module = "ImportExcel"

$test = Get-Module -ListAvailable -Name "$module"

if ($test) {
    Write-Host("Module ${module} already installed")
}
else {
    Write-Host("Installing Module ${module}")
    Install-Module -Name "$module" -Scope CurrentUser
}

#####################################################
# Phase 3: Import the local data file into a PowerShell object, and process it

Write-Host("Loading Excel file ${path}")

$excel = Import-Excel -Path "$path"

#####################################################
# Phase 4: Filter the Excel file with the test function
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/where-object

$results = $excel | Where-Object { test1($_) }

$results | Add-Member -NotePropertyName "Pattern2" -NotePropertyValue $null
$results | Add-Member -NotePropertyName "Pattern3" -NotePropertyValue $null
$results | Add-Member -NotePropertyName "Pattern4" -NotePropertyValue $null

$results | ForEach-Object { $_."Pattern2" = test2($_) }
$results | ForEach-Object { $_."Pattern3" = test3($_) }
$results | ForEach-Object { $_."Pattern4" = test4($_) }

$results = $results | Where-Object { $_."Pattern2" -or $_."Pattern3" -or $_."Pattern4" }

#####################################################
# Phase 5: Export the result as an Excel file and show it up
# The -Now switch is a shortcut that automatically creates a temporary file, 
# enables "AutoSize", "TableName" and "Show", and opens the file immediately.
        
$excel_package = $results | Export-Excel -PassThru -Now -WorksheetName "Query"-FreezeTopRowFirstColumn -BoldTopRow 
$excel_package."Query".Cells.AutoFitColumns(5, 30) 
Export-Excel -ExcelPackage $excel_package -Show