
$filter_data = @{
    pattern = "^ANR";
    column  = "Projet.Code_Decision_ANR";
}

$test_data_table = [ordered]@{

    heritage             = @{

        pattern1 = "Patrimo";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag";
        column2  = "Projet.Resume.anglais";

    }

    music_instrument     = @{

        pattern1 = "instruments?.{1,20}musique";
        column1  = "Projet.Resume.francais";

        pattern2 = "music.{1,20}instrument";
        column2  = "Projet.Resume.anglais";
    }

    archeology           = @{

        pattern1 = "arch.{1,3}olog";
        column1  = "Projet.Resume.francais";

        pattern2 = "archeolog";
        column2  = "Projet.Resume.anglais";
    }

    monument             = @{

        pattern1 = "Monument";
        column1  = "Projet.Resume.francais";

        pattern2 = "Monument";
        column2  = "Projet.Resume.anglais";
    }

    pictoral             = @{

        pattern1 = "Pictural";
        column1  = "Projet.Resume.francais";

        pattern2 = "Pictural";
        column2  = "Projet.Resume.anglais";
    }

    sculpture            = @{

        pattern1 = "Sculpture";
        column1  = "Projet.Resume.francais";

        pattern2 = "Sculpture";
        column2  = "Projet.Resume.anglais";
    }

    coins                = @{

        pattern1 = "Monnaie";
        column1  = "Projet.Resume.francais";

        pattern2 = "Coins";
        column2  = "Projet.Resume.anglais";
    }

    manuscript           = @{

        pattern1 = "Manuscrit";
        column1  = "Projet.Resume.francais";

        pattern2 = "Manuscript";
        column2  = "Projet.Resume.anglais";
    }

    subaquatic           = @{

        pattern1 = "Subaquatique";
        column1  = "Projet.Resume.francais";

        pattern2 = "Subaquatic";
        column2  = "Projet.Resume.anglais";
    }

    wreck                = @{

        pattern1 = "Epave";
        column1  = "Projet.Resume.francais";

        pattern2 = "wreck";
        column2  = "Projet.Resume.anglais";
    }

    cultural_heritage    = @{

        pattern1 = "Patrimo?.{1,20}culturel";
        column1  = "Projet.Resume.francais";

        pattern2 = "Cultural.{1,20}Heritag";
        column2  = "Projet.Resume.anglais";
    }

    oral_heritage        = @{

        pattern1 = "Patrimo?.{1,20}oral";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritage.{1,20}oral";
        column2  = "Projet.Resume.anglais";
    }

    performance          = @{

        pattern1 = "spectacle.{1,3}vivant";
        column1  = "Projet.Resume.francais";

        pattern2 = "performance";
        column2  = "Projet.Resume.anglais";
    }

    ritual               = @{

        pattern1 = "Rituel";
        column1  = "Projet.Resume.francais";

        pattern2 = "Ritual";
        column2  = "Projet.Resume.anglais";
    }

    tradition            = @{

        pattern1 = "Tradition";
        column1  = "Projet.Resume.francais";

        pattern2 = "Tradition";
        column2  = "Projet.Resume.anglais";
    }

    custum               = @{

        pattern1 = "Coutume";
        column1  = "Projet.Resume.francais";

        pattern2 = "Custum";
        column2  = "Projet.Resume.anglais";
    }

    music                = @{

        pattern1 = "Musique";
        column1  = "Projet.Resume.francais";

        pattern2 = "Music";
        column2  = "Projet.Resume.anglais";
    }

    Heritage_kraft       = @{

        pattern1 = "Patrimo?.{1,20}metier";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}kraft";
        column2  = "Projet.Resume.anglais";
    }

    heritage_digital     = @{

        pattern1 = "Patrimo?.{1,3}numerique";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}digital";
        column2  = "Projet.Resume.anglais";
    }

    heritage_natural     = @{

        pattern1 = "Patrimo?.{1,20}naturel";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}natural";
        column2  = "Projet.Resume.anglais";
    }

    heritage_landscape   = @{

        pattern1 = "Patrimo?.{1,20}paysage";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}Landscape";
        column2  = "Projet.Resume.anglais";
    }

    heritage_geology     = @{

        pattern1 = "Patrimo?.{1,20}geologie";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}geology";
        column2  = "Projet.Resume.anglais";
    }

    heritage_botanic     = @{

        pattern1 = "Patrimo?.{1,20}Botanique";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}Botanic";
        column2  = "Projet.Resume.anglais";
    }

    heritage_species     = @{

        pattern1 = "Patrimo?.{1,20}Espece";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}Species";
        column2  = "Projet.Resume.anglais";
    }

    heritage_ecosystem   = @{

        pattern1 = "Patrimo?.{1,20}Ecosysteme";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}Ecosystem";
        column2  = "Projet.Resume.anglais";
    }

    heritage_zoo         = @{

        pattern1 = "Patrimo?.{1,20}Zoo";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}Zoo";
        column2  = "Projet.Resume.anglais";
    }

    heritage_aquarium    = @{

        pattern1 = "Patrimo?.{1,20}aquarium";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}aquarium";
        column2  = "Projet.Resume.anglais";
    }

    heritage_conflict    = @{

        pattern1 = "Patrimo?.{1,20}conflit";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}conflict";
        column2  = "Projet.Resume.anglais";
    }

    heritage_war         = @{

        pattern1 = "Patrimo?.{1,20}guerre";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}war";
        column2  = "Projet.Resume.anglais";
    }

    heritage_pillage     = @{

        pattern1 = "Patrimo?.{1,20}pillage";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}pillage";
        column2  = "Projet.Resume.anglais";
    }

    heritage_destruction = @{

        pattern1 = "Patrimo?.{1,20}Destruction";
        column1  = "Projet.Resume.francais";

        pattern2 = "Heritag?.{1,20}Destruction";
        column2  = "Projet.Resume.anglais";
    }
}
#####################################################

function is_valid($a) {
    return ![string]::IsNullOrWhiteSpace($a)
}

function filter_function($filter_data, $line) {
    $pattern = $filter_data["pattern"];
    $column = $filter_data["column"];
    ##
    $a = $line."$column" | Select-string -Pattern "$pattern"
    return is_valid($a) 
}

function test_function($test_data_name, $line) {
    # Write-Host($test_data_name)
    $test_data = $test_data_table[$test_data_name]
    $pattern1 = $test_data["pattern1"];
    $column1 = $test_data["column1"];
    $pattern2 = $test_data["pattern2"];
    $column2 = $test_data["column2"];
    ##
    $a1 = $line."$column1" | Select-string -Pattern "$pattern1"
    $a2 = $line."$column2" | Select-string -Pattern "$pattern2"
    return is_valid($a1) -o is_valid($a2)
}

#####################################################
# Phase 3: Import the local data file into a PowerShell object, and process it

$path = "${HOME}/data.xlsx";

Write-Host("Loading Excel file ${path}")

$excel = Import-Excel -Path "$path"

#####################################################
# Phase 4: Filter the Excel file with the test function
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/where-object

Write-Host "Initial number of lines: $($excel.length)"

$results = $excel | Where-Object { filter_function $filter_data $_ }

Write-Host "Number of lines after filtering: $($results.length)"

foreach ($test_data_name in $test_data_table.Keys) {
    Write-Host "Applying test: $test_data_name"
    $new_key = "$test_data_name"
    $results | Add-Member -NotePropertyName  "$new_key" -NotePropertyValue $null
    $results | ForEach-Object { 
        $new_value = test_function $test_data_name $_ ; 
        $_."$new_key" = $new_value; 
    }
}

function test_or($line, $fields) {
    $r = $false
    foreach ($field in $fields) { 
        # Write-Host $field
        $r = $r -or $line."$field" 
    }
    return $r
}

$results = $results | Where-Object { test_or $_  $test_data_table.Keys }
Write-Host "Final number of lines: $($results.length)"

#####################################################
# Phase 5: Export the result as an Excel file and show it up
# The -Now switch is a shortcut that automatically creates a temporary file, 
# enables "AutoSize", "TableName" and "Show", and opens the file immediately.

$excel_package = $results | Export-Excel -PassThru -Now -WorksheetName "Query"-FreezeTopRowFirstColumn -BoldTopRow 
$excel_package."Query".Cells.AutoFitColumns(5, 30) 
Export-Excel -ExcelPackage $excel_package -Show