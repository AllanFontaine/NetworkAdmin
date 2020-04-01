;
; BIND data file for local loopback interface
;

$TTL	604800
@	IN	SOA	ns.wt1.ephec-ti.be.	admin.wt1.ephec-ti.be.
			2		; Serial
			604800		; Refresh
			86400		; Retry
			2419200		; Expire
			604800 )	; Negative Cache TTL
;

; name servers - NS record
@	IN	NS	ns.wt1.ephec-ti.be.

; name servers - A record
ns	IN	A 51.178.40.12