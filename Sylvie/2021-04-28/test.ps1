function test($line) {

    $pattern = "Patrimo|instruments?.{1,20}musique|arch.{1,3}olog" 
    $test = $line."Projet.Resume.francais" -match "$pattern"

    # Return the value
    return $test
}

#####################################################


$data = "data.xlsx"
$path = "${data}"

$excel = Import-Excel -Path "$path"

function action($line) {
    $code = $line."Projet.Code_Decision_ANR" 
    $match = $code | Select-String -Pattern "ANR-21-(\w{4})-\d{4}" -AllMatches
    $length = $match.Length
    if ($length -gt 0 ) 
    { $match.Matches.Groups[1].Value }
}



#$results = $excel | ForEach-Object { action($_) }
$excel | Add-Member -NotePropertyName Status -NotePropertyValue $null
$excel | ForEach-Object { $_.Status = action($_) }

$excel

exit