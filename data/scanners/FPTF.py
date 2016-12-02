import urllib
import re
import httplib
#
print '''
		Fake Page Text Finder

		 Coded by CrazyBoy

		   VirusPloit
'''
print '###################################'
def find(pat, text, line):
    match=re.findall(pat, text)
    if match:
        print 'Not Found ' + line
    else:
        print 'Found '+ line
#
url = raw_input('\nTarget (With out "http://www.") : ')
print 'Target ==> ', url ,'\n'
try:
	print '\n[#] Checking The Site Is Online Wait ...'
	try:
		conn = httplib.HTTPConnection(url)
		conn.connect()
	finally:
		print "\n[+] Yes... Server is On-line.\n"
except:
    print '[-] ERROR! Check Your Intermet Connection\n'
of=open("users.txt", "r")
for line in of:
	url2='http://www.' + url + '/' + line
	site=urllib.urlopen(url2)
	find('404', site.read(), url2)
of.close()
raw_input('\nPress "ENTER" To EXIT.')