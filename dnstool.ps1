function reversedns ($ip, $file) {
    if ($ip -and $file) {
        return 1
    }
    else {
        if ($file) {
            [string[]]$fromFile = Get-Content -Path $file
            foreach ($i in $fromFile) {
                $results += @(Resolve-DnsName -Name $i)    
            }
        }
        else {
            $results = (Resolve-DnsName -Name $ip)
        }
        foreach ($i in $results) {
            $output += $i.Name + " <=> " + $i.NameHost + "`n"
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
                $results += @(Resolve-DnsName -Name $i -Type A)    
            }
        }
        else {
            $results = (Resolve-DnsName -Name $domain -Type A)
        }
        foreach ($i in $results) {
            $output += $i.Name + " <=> " + $i.IPAddress + "`n"
        }
        return $output
    }
}
