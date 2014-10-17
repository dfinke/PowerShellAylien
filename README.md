PowerShell for Aylien
--

Is a PowerShell module wrapping the [Aylien](http://aylien.com/) package, consisting of eight different Natural Language Processing, Information Retrieval and Machine Learning APIs [Aylien Github repo](https://github.com/AYLIEN) that can be adapted to your processes and applications with relative ease.

```powershell
Import-Module ..\Aylien.psm1

. .\SetAylienCreds.ps1

$text = $(
    'Have a nice day'
    'The glass is half empty'
    "Moody's downgrades credit rating"
)

$text | Invoke-TextAnalysis | Format-Table -AutoSize
```