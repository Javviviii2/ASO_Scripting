$letter = Read-Host 'Escribe la letra'
$vowels = 'a','e','i','o','u'
if ($letter -in $vowels) {
    Write-Output "$letter es una vocal"
} else{
    Write-Output "$letter es una consonante"
}