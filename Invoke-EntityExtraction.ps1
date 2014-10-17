function Invoke-EntityExtraction {
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
        $address = "https://api.aylien.com/api/v1/entities?text=$text"

        Invoke-RestMethod -Uri $address -Headers $Headers
    }
}