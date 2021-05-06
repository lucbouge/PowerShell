
$filter_data = @{
    pattern = "^ANR-(18|19|20)-";
    column  = "Projet.Code_Decision_ANR";
}

#####################################################

function match_both_close($a, $b) {
    $distance = 50
    $pattern = "(?:(?:${a}).{1,${distance}}(?:${b}))|(?:(?:${b}).{1,${distance}}(?:${a}))"
    Write-Host $pattern
    return $pattern
}

$test_data_table = [ordered]@{

    heritage             = @{
        pattern_fr = "patrimo";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "heritage";
        column_en  = "Projet.Resume.anglais";
    }

    music_instrument     = @{
        pattern_fr = match_both_close "instrument" "musi(cal|caux|que)";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "music" "instrument";
        column_en  = "Projet.Resume.anglais";
    }

    archeology           = @{
        pattern_fr = "arch[eé]olog";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "archeolog";
        column_en  = "Projet.Resume.anglais";
    }

    monument             = @{
        pattern_fr = "monument";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "monument";
        column_en  = "Projet.Resume.anglais";
    }

    pictoral             = @{
        pattern_fr = "pictural";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "pictural";
        column_en  = "Projet.Resume.anglais";
    }

    sculpture            = @{
        pattern_fr = "sculpture";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "sculpture";
        column_en  = "Projet.Resume.anglais";
    }

    coins                = @{
        pattern_fr = "monnaie";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "coin";
        column_en  = "Projet.Resume.anglais";
    }

    manuscript           = @{
        pattern_fr = "manuscrit";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "manuscript";
        column_en  = "Projet.Resume.anglais";
    }

    subaquatic           = @{
        pattern_fr = "subaquatique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "subaquatic";
        column_en  = "Projet.Resume.anglais";
    }

    wreck                = @{
        pattern_fr = "[eé]pave";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "wreck";
        column_en  = "Projet.Resume.anglais";
    }

    cultural_heritage    = @{
        pattern_fr = match_both_close "patrimo" "culturel";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "cultural" "heritage";
        column_en  = "Projet.Resume.anglais";
    }

    oral_heritage        = @{
        pattern_fr = match_both_close "patrimo" "oral";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "oral";
        column_en  = "Projet.Resume.anglais";
    }

    performance          = @{
        pattern_fr = match_both_close "spectacle" "vivant";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "performance";
        column_en  = "Projet.Resume.anglais";
    }

    ritual               = @{
        pattern_fr = "rituel";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "ritual";
        column_en  = "Projet.Resume.anglais";
    }

    tradition            = @{
        pattern_fr = "tradition";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "tradition";
        column_en  = "Projet.Resume.anglais";
    }

    custom               = @{
        pattern_fr = "coutume";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "custom";
        column_en  = "Projet.Resume.anglais";
    }

    music                = @{
        pattern_fr = "musique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = "music";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_craft       = @{
        pattern_fr = match_both_close "patrimo" "m[eé]tier";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "craft";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_digital     = @{
        pattern_fr = match_both_close "patrimo" "num[eé]rique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "digital";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_natural     = @{
        pattern_fr = match_both_close "patrimo" "naturel";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "natural";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_landscape   = @{
        pattern_fr = match_both_close "patrimo" "paysage";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "landscape";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_geology     = @{
        pattern_fr = match_both_close "patrimo" "g[eé]olog";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "geolog";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_botanic     = @{
        pattern_fr = match_both_close "patrimo" "botanique";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "botanic";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_species     = @{
        pattern_fr = match_both_close "patrimo" "esp[eè]ce";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "species";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_ecosystem   = @{
        pattern_fr = match_both_close "patrimo" "[eé]co.{0,3}syst[eè]me";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "eco.{0,3}system";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_zoo         = @{
        pattern_fr = match_both_close "patrimo" "zoo";
        column_fr  = "Projet.Resume.francais";
        ##        
        pattern_en = match_both_close "heritage" "zoo";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_aquarium    = @{
        pattern_fr = match_both_close "patrimo" "aquari";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "aquari";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_conflict    = @{
        pattern_fr = match_both_close "patrimo" "confli";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "conflict";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_war         = @{
        pattern_fr = match_both_close "patrimo" "guerr";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "war";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_looting     = @{
        pattern_fr = match_both_close "patrimo" "pillage";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "looting";
        column_en  = "Projet.Resume.anglais";
    }

    heritage_destruction = @{
        pattern_fr = match_both_close "patrimo" "destruction";
        column_fr  = "Projet.Resume.francais";
        ##
        pattern_en = match_both_close "heritage" "destruction";
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