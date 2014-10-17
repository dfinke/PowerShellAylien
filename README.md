PowerShell for Aylien
--

Is a PowerShell module wrapping the [Aylien](http://aylien.com/) package, consisting of eight different Natural Language Processing, Information Retrieval and Machine Learning APIs [Aylien Github repo](https://github.com/AYLIEN) that can be adapted to your processes and applications with relative ease.

Video
-
![](https://raw.githubusercontent.com/dfinke/PowerShellAylien/master/images/video.gif)

### Try Invoke-TextAnalysis

```powershell
Import-Module .\Aylien.psm1

$env:AylienApplicationId  = '<Your Aylien Application Id>'
$env:AylienApplicationKey = '<Your Aylien Application Key>'

$text = $(
    'Have a nice day'
    'The glass is half empty'
    "Moody's downgrades credit rating"
)

$text | Invoke-TextAnalysis | Format-Table -AutoSize
```
### Results
```
text                             subjectivity subjectivity_confidence polarity polarity_confidence
----                             ------------ ----------------------- -------- -------------------
Have a nice day                  subjective        0.9900886100760287 positive                0.75
The glass is half empty          subjective        0.7644409047525341 negative  0.9741158803478501
Moody's downgrades credit rating subjective        0.9999999997427047 negative  0.9963972429917335
```