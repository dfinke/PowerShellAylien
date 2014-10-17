Import-Module ..\Aylien.psm1

. .\SetAylienCreds.ps1

$text = $(
'Jane Doe'
'John Doe'
'this is nothing'
'An address: 310 west 44th street'
'An address with a name: Barack Obama, 310 west 44th street'
)

$text |
    Invoke-EntityExtraction |
    Where Entities |
    ForEach { $_.Entities.person }