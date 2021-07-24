# DNS-Bulk-Lookup

## What can this script do?

This script allows you to perform DNS, aswell as Reverse-DNS Lookups on either single Domains (IPs) or a list of Domains (IPs). It can easily be loaded as a module into Powershell and might help you save time in the future.

## How to use

### 1. To Lookup the IP of one Host

```
forwarddns -domain domain
```

### 1.1 To Lookup multiple IPs

```
forwarddns -file C:\hosts.txt 
```
**If your filepath includes spaces, special chars etc. put the filepath in double quotes**

### 2. To Lookup the Domain of one IP

```
reversedns -ip 1.1.1.1
``` 
 ### 2.1 To Lookup multiple Domains
 
 ```
 reversedns -file C:\ips.txt
 ```
 **If your filepath includes spaces, special chars etc. put the filepath in double quotes**

### 3. Example

Bulk Lookup `amazon.com`, `google.com`
```
forwarddns -file .\example.txt
```
Output: 
```
amazon.com <=> 176.32.103.205
amazon.com <=> 54.239.28.85
amazon.com <=> 205.251.242.103
google.com <=> 142.250.74.78
```
