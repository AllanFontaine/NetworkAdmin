
$ORIGIN wt2-1.ephec-ti.be.
$TTL	604800
@	IN	SOA	ns.wt2-1.ephec-ti.be.	admin.wt2-1.ephec-ti.be. (
			2		; Serial
			604800		; Refresh
			86400		; Retry
			2419200		; Expire
			604800 )	; Negative Cache TTL
;

; name servers - NS record
@	IN	NS	ns.wt2-1.ephec-ti.be.

; name servers - A record
ns	IN	A	51.178.41.88

; mail servers
mail					IN 	A		51.178.41.88
smtp					IN	CNAME	mail
pop3					IN	CNAME	mail
imap					IN	CNAME	mail  
mail._domainkey			IN	TXT	( "v=DKIM1; h=sha256; k=rsa; "
	  "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxNnLECnnexXDzm92yFJcrWPoN4ip+PdzWe2naups23zFeQUqUG2JGx9XqST4LQ081Q1NHkhsAL0iaTTnINQrJeowQhRrA8mQ0zeE6vpENizz+xYgrioGBTYnCrxL/1/ACPQAEF+sLUOtLFxLbjpwVdShrV3Tr6/iLWRwlUykugv8ajjReJLU8lM+UQqTKrBKkXQ3IqrTBLx1sJ"
	  "utfS3crHVZuRd2VcAnCE2yfX/K21aPvUy8yYMH2CtuJyztQfbkkbu/UK113AxLMkf/JZqpyHhUlC2Mg9VhBhwhI0Fk2MdZ5hvCsbapGaMFw72GSy6WuyGKzDqV+SuG79EbbugArQIDAQAB" )  ; ----- DKIM key mail for wt2-1.ephec-ti.be
	  
; services web
serverWeb		IN	A			51.178.41.88
www				IN	CNAME		serverWeb
b2b				IN	CNAME		serverWeb
intranet		IN	CNAME		serverWeb

; VOIP
_sip._udp	SRV     0       0       5060        sip 
_sip._tcp	SRV     0       0       5060        sip
sip			IN      A      	51.178.40.18