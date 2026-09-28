; db.example.com — starter zone file.
; Validate: `named-checkzone example.com db.example.com`
$TTL 3600
@   IN  SOA ns1.example.com. admin.example.com. (
              2026092801 ; serial
              3600       ; refresh
              600        ; retry
              86400      ; expire
              600 )      ; minimum
@   IN  NS  ns1.example.com.
ns1 IN  A   192.0.2.1
