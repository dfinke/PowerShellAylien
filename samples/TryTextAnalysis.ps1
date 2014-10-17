Import-Module ..\Aylien.psm1

. .\SetAylienCreds.ps1

$text = $(
    'Have a nice day'
    'The glass is half empty'
    "Moody's downgrades credit rating"
)

$text | Invoke-TextAnalysis | Format-Table -AutoSize
