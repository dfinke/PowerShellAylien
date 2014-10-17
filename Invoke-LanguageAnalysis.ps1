function Invoke-LanguageAnalysis {
    <#
        .Synopsis
            A Quick Description of what the command does
        .Description
            A Detailed Description of what the command does
        .Example
            An example of using the command
    #>
    param(
        [Parameter(ValueFromPipeline=$true)]
        [string]$Text,
        $ApplicationId,
        $ApplicationKey
    )

    Begin {
        $Headers = Get-AylienCredential $ApplicationId $ApplicationKey
    }

    Process {
        $address = "https://api.aylien.com/api/v1/language?text=$text"

        Invoke-RestMethod -Uri $address -Headers $Headers |
            Add-Member -MemberType ScriptProperty -PassThru -Name DisplayName `
                -Value {(New-Object System.Globalization.CultureInfo $this.lang).DisplayName}
    }
}