
$filter_data = @{
    pattern = "^ANR";
    column  = "Projet.Code_Decision_ANR";
}

#####################################################

function match_both_close($a, $b) {
    $distance = 20
    return "(?:(?:${a}).{1,${distance}}(?:${b}))|(?:(?:${b}).{1,${distance}}(?:${a}))"
}

$test_data_table = [ordered]@{

    heritage             = @{
        pattern_fr = "Patrimo";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Heritag";
        column_en  = "Projet.Resume.anglais";
    }

    music_instrument     = @{
        pattern_fr = match_both_close "instruments?" "musique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "music" "instrument";
        column_en  = "Projet.Resume.anglais";
    }

    archeology           = @{
        pattern_fr = "arch.{1,3}olog";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "archeolog";
        column_en  = "Projet.Resume.anglais";
    }

    monument             = @{
        pattern_fr = "Monument";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Monument";
        column_en  = "Projet.Resume.anglais";
    }

    pictoral             = @{
        pattern_fr = "Pictural";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Pictural";
        column_en  = "Projet.Resume.anglais";
    }

    sculpture            = @{
        pattern_fr = "Sculpture";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Sculpture";
        column_en  = "Projet.Resume.anglais";
    }

    coins                = @{
        pattern_fr = "Monnaie";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Coins";
        column_en  = "Projet.Resume.anglais";
    }

    manuscript           = @{
        pattern_fr = "Manuscrit";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Manuscript";
        column_en  = "Projet.Resume.anglais";
    }

    subaquatic           = @{
        pattern_fr = "Subaquatique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Subaquatic";
        column_en  = "Projet.Resume.anglais";
    }

    wreck                = @{
        pattern_fr = "Epave";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "wreck";
        column_en  = "Projet.Resume.anglais";
    }

    cultural_heritage    = @{
        pattern_fr = match_both_close "Patrimo?" "culturel";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Cultural" "Heritag";
        column_en  = "Projet.Resume.anglais";
    }

    oral_heritage        = @{
        pattern_fr = match_both_close "Patrimo?" "oral";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritage" "oral";
        column_en  = "Projet.Resume.anglais";
    }

    performance          = @{
        pattern_fr = "spectacle.{1,3}vivant";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "performance";
        column_en  = "Projet.Resume.anglais";
    }

    ritual               = @{
        pattern_fr = "Rituel";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Ritual";
        column_en  = "Projet.Resume.anglais";
    }

    tradition            = @{
        pattern_fr = "Tradition";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Tradition";
        column_en  = "Projet.Resume.anglais";
    }

    custum               = @{
        pattern_fr = "Coutume";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "Custum";
        column_en  = "Projet.Resume.anglais";
    }

    music                = @{
        pattern_fr = "Musique";
        column_fr  = "Projet.Resume.francais";

        pattern_en = "Music";
        column_en  = "Projet.Resume.anglais";
    }

    Heritage_kraft       = @{
        pattern_fr = match_both_close "Patrimo?" "metier";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "kraft";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_digital     = @{
        pattern_fr = match_both_close "Patrimo?" "numerique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "digital";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_natural     = @{
        pattern_fr = match_both_close "Patrimo?" "naturel";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "natural";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_landscape   = @{
        pattern_fr = match_both_close "Patrimo?" "paysage";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "Landscape";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_geology     = @{
        pattern_fr = match_both_close "Patrimo?" "geologie";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "geology";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_botanic     = @{
        pattern_fr = match_both_close "Patrimo?" "Botanique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "Botanic";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_species     = @{
        pattern_fr = match_both_close "Patrimo?" "Espece";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "Species";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_ecosystem   = @{
        pattern_fr = match_both_close "Patrimo?" "Ecosysteme";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "Ecosystem";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_zoo         = @{
        pattern_fr = match_both_close "Patrimo?" "Zoo";
        column_fr  = "Projet.Resume.francais";
        ##        
        pattern_en = match_both_close "Heritag?" "Zoo";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_aquarium    = @{
        pattern_fr = match_both_close "Patrimo?" "aquarium";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "aquarium";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_conflict    = @{
        pattern_fr = match_both_close "Patrimo?" "conflit";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "conflict";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_war         = @{
        pattern_fr = match_both_close "Patrimo?" "guerre";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "war";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_pillage     = @{
        pattern_fr = match_both_close "Patrimo?" "pillage";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "pillage";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_destruction = @{
        pattern_fr = match_both_close "Patrimo?" "Destruction";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "Heritag?" "Destruction";
        column_en  = "Projet.Resume.anglais";
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
    $pattern_fr = $test_data["pattern_fr"];
    $column_fr = $test_data["column_fr"];
    $pattern_en = $test_data["pattern_en"];
    $column_en = $test_data["column_en"];
    ##
    $a1 = $line."$column_fr" | Select-string -Pattern "$pattern_fr"
    $a2 = $line."$column_en" | Select-string -Pattern "$pattern_en"
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