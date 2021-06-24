function reversedns ($ip, $file) {
    if ($ip -and $file) {
        return 1
    }
    else {
        if ($file) {
            [string[]]$fromFile = Get-Content -Path $file
            foreach ($i in $fromFile) {
                $results += @((Resolve-DnsName -Name $i).NameHost)    
            }
        }
        else {
            $results = (Resolve-DnsName -Name $ip).NameHost
        }
        foreach ($i in $results) {
            $output += $i + "`n"
        }
        return $output
    }
}

function forwarddns ($domain, $file) {
    if ($domain -and $file) {
        return 1
    }
    else {
        if ($file) {
            [string[]]$fromFile = Get-Content -Path $file
            foreach ($i in $fromFile) {
                $results += @((Resolve-DnsName -Name $i -Type A).IPAddress)    
            }
        }
        else {
            $results = (Resolve-DnsName -Name $domain -Type A).IPAddress
        }
        foreach ($i in $results) {
            $output += $i + "`n"
        }
        return $output
    }
}


