PLUS3DOS �   s��                                                                                                         F 
 �40959  ��  
 ��2      �debug=1     ( �startserial()  2 � < �"Querying wifi.." F �cmd("E0") P �cmd("+CWMODE=1") Z �cmd("+GMR")�v$ d! �between(v$, ":",�(13    ))�v$ n �cmd("+CWJAP?")�s$ x �cmd("+CIPSTA?")�i$ � �cmd("+CIPDNS_CUR?")�d$ � �between(i$, """", """")�i$ � �between(s$, """", """")�s$ � �splitdns(d$)�d$ � � � �"Firmware: "+v$ � �"Connected to: "+s$ � �"IP Address: "+i$ � �"DNS: "+d$ � � � �"1. Set SSID" � �"2. Set Manual IP" � �"3. Set Manual DNS" �"4. Set automatic IP/DNS" �"5. List Networks" �"6. Wifi Firmware update"" �"9. Refresh", �"0. Quit"6 �#0     �a@! �a = 49  1  ˓ssid():�110  n  J" �a = 50  2  ˓setip():�110  n  T# �a = 51  3  ˓setdns():�110  n  ^$ �a = 52  4  ˓autodns():�110  n  h$ �a = 53  5  ˓listaps():�110  n  r+ �a = 54  6  ˓firmwareupdate():�110  n  | �a = 57  9  ��110  n  � �a = 48  0  ��� �310  6 � �ssid()� �"SSID (Case sensitive!)",�s$� �"Password",�p$�% �cmd("+CWJAP="""+s$+""","""+p$+"""")� ��	 �setip()� �"New IP",�i$� �cmd("+CWDHCP=0,1")� �cmd("+CIPSTA="""+i$+"""")� ��
 �setdns() �d$,e$ �"New DNS 1",�d$ �"New DNS 2",�e$& �cmd("+CWDHCP=0,1")0! �cmd("+CIPDNS_DEF=1,"+d$+","+e$): �D �autodns()N �cmd("+CWDHCP=1,1")X �cmd("+CIPDNS_DEF=0")b �l �listaps()v	 �a$,l$,c� �� �cmd("+CWLAP")�a$� ��" �pos(a$, 1    ,�(13    ))�pos� �l$ = a$(�pos-1    )� �between(l$, """", """")�l$� �l$� �a$=a$(pos+1    �)� ��a$=""� �#0     �c� �� �firmwareupdate()� �"Updating.. please wait.." �cmd("+CIUPDATE") � �openserver()  �s$* �"Server address: ";�s$4$ �connect(7    ,"TCP",s$,21    )>	 �7    H �R	 �cmd(n$)\ �a$,r$f/ �flush(15    ):�driver 78,11 when that worksp �sendcmd("AT"+n$)z �readcmd()�a$� �a$ = "AT"+n$˓getcmd()�a$� � � �a$�"OK"�a$�"ERROR"� �r$=r$+a$+�(13    )� �readcmd()�a$�
 ��0     � �r$�""��r$=r$(̱(r$)-1    )� �= r$� �flush(chan)� �n,c� ��	 �#chan�n� �n > 0     	 �#chan�c
 ��0      �$ �connect(chan,k$,n$,p).! �chan, "D>N>"+k$+","+n$+","+�(p)8 �B �sendln(chan,n$)L �#chan;n$+�(13    );V �` �sendcmd(n$)j2 �debug=1    ��#1    ,�0     ,0     ; ">"+n$t �#15    ;n$+�(13    );~ �� �readcmd()� �n$� �readln(15    )�n$�2 �debug=1    ��#1    ,�0     ,0     ; "<"+n$� �= n$� �readln(chan)� �n$,c� ��
 �#chan�%s� �%s=0��1240  � �	 �#chan�c� �c>32     ��n$=n$+�(c)   ��c=13    �n$�""
 �= n$ �startserial() ���1360  P (
 �15    2 �15    , "D>N" < ��F �P ��Z �"Installing driver..."d  .install /nextzxos/espat.drvn# �"/nextzxos/espat.sys"�40960   � x �%b� ��%b� �78  N  ,6    ,%b� �78  N  ,9  	  ,0     � �78  N  ,3    � �15    , "D>N"� �� �pos(s$, start, c$)� �n = starṯ(s$)-�(c$)�" �s$(n�n+�(c$)-1    ) = c$˒= n � �n� �=�(s$)� �between(a$, s$, e$)� �start,end3 �s$�""˓pos(a$, 1    , s$)�start:��start=0     ; �e$�""˓pos(a$, start+1    , e$)�end:��end=�(a$)+1    ! �= a$(start+1    �end-1    )" �splitdns(a$), �pos(a$,1    ,":")�start16! �pos(a$,start1,�(13    ))�end1@ �pos(a$,end1,":")�start2J! �pos(a$,start2,�(13    ))�end2TH �= a$(start1+1    �end1-1    )+", "+a$(start2+1    �end2-1    )�ebu�    �ha�     �            �c     �tar�     �n�     V 1.6.2.0(Apr13201811:10:59)�tart�    �nd�    �tart�    �nd�    a  0  R  N  I 192.168.10.254E  C  S
 PrometheusA  D 208.67.222.22, 