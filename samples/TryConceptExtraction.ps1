Import-Module ..\Aylien.psm1

. .\SetAylienCreds.ps1

$urls=$(
'http://blogs.technet.com/b/heyscriptingguy/archive/2014/09/22/fun-formatting-ones-part-1-the-task.aspx'
'http://blogs.technet.com/b/heyscriptingguy/archive/2014/09/23/fun-formatting-ones-part-2-the-method.aspx'
'http://www.dougfinke.com/blog/index.php/2014/08/03/how-to-save-keystrokes-using-powershell-ise/'
'http://www.dougfinke.com/blog/index.php/2014/07/13/powershell-and-atom-editormore-automation/'
'http://www.dougfinke.com/blog/index.php/2014/07/01/powershell-dont-underestimate-update-typedata/'
)

$urls | Invoke-ConceptExtraction 
