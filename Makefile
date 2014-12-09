ldapperf: ldapperf.c
	cc -Wall -o $@ $< -L/opt/zimbra/openldap/lib -lldap_r -lpthread -llber  -I /opt/zimbra/openldap/include  -Wl,-rpath,/opt/zimbra/openldap/lib

tar: clean
	tar -cvf ldapperf.tar *

clean:
	rm -rf *.dSYM
	rm ldapperf
