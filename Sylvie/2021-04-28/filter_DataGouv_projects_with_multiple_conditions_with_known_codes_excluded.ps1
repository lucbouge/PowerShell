$pattern1 = "^ANR-" 
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

# Copied from Excel file "Copie de Essai SC Patrim materiel 1[3].xlsx"
$known_codes = @(
    "ANR-21-CHIP-0003",
    "ANR-21-CHIP-0002",
    "ANR-20-THIA-0017",
    "ANR-20-MRS2-0007",
    "ANR-20-JPIC-0005",
    "ANR-20-JPIC-0003",
    "ANR-20-JPIC-0002",
    "ANR-20-JPIC-0001",
    "ANR-20-CE91-0001",
    "ANR-20-CE41-0015",
    "ANR-20-CE38-0016",
    "ANR-20-CE38-0014",
    "ANR-20-CE38-0007",
    "ANR-20-CE38-0005",
    "ANR-20-CE38-0001",
    "ANR-20-CE33-0006",
    "ANR-20-CE29-0018",
    "ANR-20-CE27-0023",
    "ANR-20-CE27-0012",
    "ANR-20-CE27-0011",
    "ANR-20-CE27-0010",
    "ANR-20-CE27-0005",
    "ANR-20-CE27-0003",
    "ANR-20-CE27-0001",
    "ANR-20-CE22-0012",
    "ANR-20-CE22-0004",
    "ANR-20-CE03-0011",
    "ANR-20-CE03-0010",
    "ANR-20-CE03-0008",
    "ANR-20-AORS-0003",
    "ANR-19-MRS2-0007",
    "ANR-19-LCV2-0013",
    "ANR-19-LCCO-0006",
    "ANR-19-DATA-0018",
    "ANR-19-DATA-0010",
    "ANR-19-CE38-0011",
    "ANR-19-CE27-0025",
    "ANR-19-CE27-0024",
    "ANR-19-CE27-0020",
    "ANR-19-CE27-0019",
    "ANR-19-CE27-0018",
    "ANR-19-CE27-0014",
    "ANR-19-CE27-0013",
    "ANR-19-CE27-0009",
    "ANR-19-CE27-0008",
    "ANR-19-CE27-0002",
    "ANR-19-CE23-0028",
    "ANR-19-CE22-0006",
    "ANR-19-CE09-0010",
    "ANR-19-CE02-0013",
    "ANR-18-FRAL-0010",
    "ANR-18-CE38-0009",
    "ANR-18-CE38-0005",
    "ANR-18-CE38-0002",
    "ANR-18-CE32-0006",
    "ANR-18-CE27-0028",
    "ANR-18-CE27-0026",
    "ANR-18-CE27-0025",
    "ANR-18-CE27-0020",
    "ANR-18-CE27-0019",
    "ANR-18-CE27-0018",
    "ANR-18-CE27-0014",
    "ANR-18-CE27-0009",
    "ANR-18-CE27-0006",
    "ANR-18-CE27-0005",
    "ANR-18-CE27-0004",
    "ANR-18-CE08-0025",
    "ANR-18-CE03-0003",
    "ANR-18-CE01-0005",
    "ANR-17-MRS5-0024",
    "ANR-17-MRS5-0017",
    "ANR-17-MRS5-0006",
    "ANR-17-LCV2-0006",
    "ANR-17-CE40-0015",
    "ANR-17-CE38-0014",
    "ANR-17-CE38-0010",
    "ANR-17-CE38-0004",
    "ANR-17-CE38-0002",
    "ANR-17-CE29-0002",
    "ANR-17-CE27-0023",
    "ANR-17-CE27-0022",
    "ANR-17-CE27-0019",
    "ANR-17-CE27-0014",
    "ANR-17-CE27-0009",
    "ANR-17-CE27-0007",
    "ANR-17-CE27-0005",
    "ANR-17-CE27-0003",
    "ANR-17-CE27-0001",
    "ANR-17-CE23-0008",
    "ANR-17-CE20-0034",
    "ANR-17-CE03-0009",
    "ANR-17-CE03-0006",
    "ANR-16-MRSE-0026",
    "ANR-16-MRSE-0006",
    "ANR-16-MRSE-0001",
    "ANR-16-MRS3-0005",
    "ANR-16-LCV2-0007",
    "ANR-16-LCV1-0005",
    "ANR-16-FRQC-0007",
    "ANR-16-FRQC-0004",
    "ANR-16-FRQC-0002",
    "ANR-16-CE38-0009",
    "ANR-16-CE38-0005",
    "ANR-16-CE38-0001",
    "ANR-16-CE27-0010",
    "ANR-16-CE27-0009",
    "ANR-16-CE08-0010",
    "ANR-16-ACHN-0001",
    "ANR-15-MRSE-0020",
    "ANR-15-MRSE-0014",
    "ANR-15-MRSE-0004",
    "ANR-15-LCV4-0002",
    "ANR-15-LCV3-0004",
    "ANR-15-CE38-0010",
    "ANR-15-CE38-0005",
    "ANR-15-CE38-0003",
    "ANR-15-CE38-0002",
    "ANR-15-CE33-0004",
    "ANR-15-CE29-0007",
    "ANR-15-CE27-0010",
    "ANR-15-CE27-0009",
    "ANR-15-CE27-0008",
    "ANR-15-CE27-0002",
    "ANR-15-CE23-0002",
    "ANR-15-CE22-0007",
    "ANR-15-CE22-0001",
    "ANR-14-FRAL-0008",
    "ANR-14-CE33-0016",
    "ANR-14-CE31-0020",
    "ANR-14-CE31-0019",
    "ANR-14-CE31-0017",
    "ANR-14-CE31-0009",
    "ANR-14-CE31-0007",
    "ANR-14-CE31-0006",
    "ANR-14-CE31-0005",
    "ANR-14-CE31-0002",
    "ANR-14-CE29-0012",
    "ANR-14-CE29-0001",
    "ANR-14-CE24-0005",
    "ANR-14-CE24-0003",
    "ANR-14-CE22-0019",
    "ANR-14-CE22-0007",
    "ANR-14-CE09-0019",
    "ANR-14-CE07-0014",
    "ANR-14-ACHN-0021",
    "ANR-14-ACHN-0006",
    "ANR-13-VBDU-0005",
    "ANR-13-SAMA-0008",
    "ANR-13-PDOC-0018",
    "ANR-13-JSH3-0005",
    "ANR-13-JSH3-0002",
    "ANR-13-FRAL-0015",
    "ANR-13-FRAL-0008",
    "ANR-13-CULT-0003",
    "ANR-13-CULT-0002",
    "ANR-13-CORD-0021",
    "ANR-13-CORD-0019",
    "ANR-13-CORD-0018",
    "ANR-13-CORD-0016",
    "ANR-13-CORD-0014",
    "ANR-13-BSV7-0017",
    "ANR-13-BSH3-0010",
    "ANR-13-BSH2-0001",
    "ANR-13-BSH1-0001",
    "ANR-12-VBDU-0008",
    "ANR-12-JSH3-0004",
    "ANR-12-IS02-0003",
    "ANR-12-INEG-0001",
    "ANR-12-FRAL-0006",
    "ANR-12-CULT-0005",
    "ANR-12-CORP-0014",
    "ANR-12-CORP-0003",
    "ANR-12-CORP-0002",
    "ANR-12-CORD-0029",
    "ANR-12-BSH3-0012",
    "ANR-12-BSH3-0010",
    "ANR-11-PDOC-0010",
    "ANR-11-IS02-0001",
    "ANR-11-FRQU-0008",
    "ANR-11-FRAL-0010",
    "ANR-11-EMCO-0006",
    "ANR-11-BSH3-0009",
    "ANR-11-BSH3-0007",
    "ANR-11-BSH3-0005",
    "ANR-11-BSH1-0001",
    "ANR-11-BS09-0022",
    "ANR-11-BS02-0012",
    "ANR-10-JCJC-0103",
    "ANR-10-FRAL-0003",
    "ANR-10-ESVS-0009",
    "ANR-10-CREA-0011",
    "ANR-10-CORD-0020",
    "ANR-10-CEPL-0008",
    "ANR-10-BLAN-2013",
    "ANR-10-BLAN-2012",
    "ANR-10-BLAN-2003",
    "ANR-10-BLAN-2001",
    "ANR-10-BLAN-0619"
)

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

$results = $results | Where-Object { $_."Projet.Code_Decision_ANR" -notin $known_codes }

#####################################################
# Phase 5: Export the result as an Excel file and show it up
# The -Now switch is a shortcut that automatically creates a temporary file, 
# enables "AutoSize", "TableName" and "Show", and opens the file immediately.
        
$excel_package = $results | Export-Excel -PassThru -Now -WorksheetName "Query"-FreezeTopRowFirstColumn -BoldTopRow 
$excel_package."Query".Cells.AutoFitColumns(5, 30) 
Export-Excel -ExcelPackage $excel_package -Show