function Invoke-TextAnalysis {
    <#
    .Synopsis
            Detects sentiment of a document.
        .Description
           Detects sentiment of a document in terms of polarity ("positive" or "negative") and subjectivity ("subjective" or "objective").
        .Example
            "The glass is half empty" | Invoke-TextAnalysis

            text                    : The glass is half empty
            subjectivity            : subjective
            subjectivity_confidence : 0.7644409047525341
            polarity                : negative
            polarity_confidence     : 0.9741158803478501

        .Notes
            Author   = Doug Finke
            Company  = Start-Automating
            WebSite  = http://start-automating.com/
            LastEdit = 10/04/2014
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
        $address = "https://api.aylien.com/api/v1/sentiment?text=$($Text)"

        Invoke-RestMethod -Uri $address -Headers $Headers
    }
}