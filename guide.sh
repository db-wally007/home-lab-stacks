#!/bin/bash
#add <lcn>0</> to the XML file - the tag will be used by Plex to order the channels based on the order of channels in the WebGrab++ config
xmlstarlet ed -s '//tv/channel' -t elem -n 'lcn'  -v 0 /mnt/C_W2012/Users/vladik1/Desktop/guide.xml >/mnt/C_W2012/Users/vladik1/Desktop/guide_lcn.xml
#Delete certain programmes, add and update channel logos
xmlstarlet ed \
-d "//programme[*[contains(text(),'Přestávka ve vysílání')]]" \
\
-d "//programme[*[contains(text(),'..programmes start at')]]" \
\
-d "//programme[*[contains(text(),'Through the night programming')]]" \
\
-d "//programme[*[contains(text(),'Información del canal.')]]" \
\
-d '//tv/channel[@id="BBC One HD"]/icon' \
-s '//tv/channel[@id="BBC One HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="BBC One HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/bbcone.png" \
\
-d '//tv/channel[@id="BBC Two HD"]/icon' \
-s '//tv/channel[@id="BBC Two HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="BBC Two HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/bbctwo.png" \
\
-d '//tv/channel[@id="ITV"]/icon' \
-s '//tv/channel[@id="ITV"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ITV"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/itv.png" \
\
-d '//tv/channel[@id="ITVBe"]/icon' \
-s '//tv/channel[@id="ITVBe"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ITVBe"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/itvbe.png" \
\
-d '//tv/channel[@id="Channel 4"]/icon' \
-s '//tv/channel[@id="Channel 4"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Channel 4"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/channel4.png" \
\
-d '//tv/channel[@id="Channel 5"]/icon' \
-s '//tv/channel[@id="Channel 5"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Channel 5"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/channel5.png" \
\
-d '//tv/channel[@id="ITV2 HD"]/icon' \
-s '//tv/channel[@id="ITV2 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ITV2 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/itv2.png" \
\
-d '//tv/channel[@id="ITV3 HD"]/icon' \
-s '//tv/channel[@id="ITV3 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ITV3 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/itv3.png" \
\
-d '//tv/channel[@id="ITV4 HD"]/icon' \
-s '//tv/channel[@id="ITV4 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ITV4 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/itv4.jpg" \
\
-d '//tv/channel[@id="E4 HD"]/icon' \
-s '//tv/channel[@id="E4 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="E4 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/e4.png" \
\
-d '//tv/channel[@id="BBC Four"]/icon' \
-s '//tv/channel[@id="BBC Four"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="BBC Four"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/bbcfour.png" \
\
-d '//tv/channel[@id="More4 HD"]/icon' \
-s '//tv/channel[@id="More4 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="More4 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/more4.png" \
\
-d '//tv/channel[@id="CBS Justice"]/icon' \
-s '//tv/channel[@id="CBS Justice"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="CBS Justice"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/cbsjustice.png" \
\
-d '//tv/channel[@id="CBS Reality"]/icon' \
-s '//tv/channel[@id="CBS Reality"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="CBS Reality"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/cbsreality.png" \
\
-d '//tv/channel[@id="CBS Drama"]/icon' \
-s '//tv/channel[@id="CBS Drama"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="CBS Drama"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/cbsdrama.png" \
\
-d '//tv/channel[@id="5STAR"]/icon' \
-s '//tv/channel[@id="5STAR"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="5STAR"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/5star.png" \
\
-d '//tv/channel[@id="5SELECT"]/icon' \
-s '//tv/channel[@id="5SELECT"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="5SELECT"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/5Select.jpg" \
\
-d '//tv/channel[@id="5 USA"]/icon' \
-s '//tv/channel[@id="5 USA"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="5 USA"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/5usa.png" \
\
-d '//tv/channel[@id="PBS America"]/icon' \
-s '//tv/channel[@id="PBS America"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="PBS America"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/pbsamerica.png" \
\
-d '//tv/channel[@id="Film4 HD"]/icon' \
-s '//tv/channel[@id="Film4 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Film4 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/film4.png" \
\
-d '//tv/channel[@id="Really"]/icon' \
-s '//tv/channel[@id="Really"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Really"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/really.png" \
\
-d '//tv/channel[@id="QUEST"]/icon' \
-s '//tv/channel[@id="QUEST"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="QUEST"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/quest.png" \
\
-d '//tv/channel[@id="HGTV"]/icon' \
-s '//tv/channel[@id="HGTV"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="HGTV"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/hgtv.png" \
\
-d '//tv/channel[@id="Pick"]/icon' \
-s '//tv/channel[@id="Pick"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Pick"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/picktv.png" \
\
-d '//tv/channel[@id="CBeebies"]/icon' \
-s '//tv/channel[@id="CBeebies"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="CBeebies"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/cbeebies.png" \
\
-d '//tv/channel[@id="POP"]/icon' \
-s '//tv/channel[@id="POP"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="POP"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/pop.png" \
\
-d '//tv/channel[@id="Sky Cinema Premieren HD"]/icon' \
-s '//tv/channel[@id="Sky Cinema Premieren HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Sky Cinema Premieren HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/skycinema.png" \
\
-d '//tv/channel[@id="Sky Cinema Best Of HD"]/icon' \
-s '//tv/channel[@id="Sky Cinema Best Of HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Sky Cinema Best Of HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/skycinema.png" \
\
-d '//tv/channel[@id="Sky Cinema Action HD"]/icon' \
-s '//tv/channel[@id="Sky Cinema Action HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Sky Cinema Action HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/skycinema.png" \
\
-d '//tv/channel[@id="Sky Cinema Family"]/icon' \
-s '//tv/channel[@id="Sky Cinema Family"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Sky Cinema Family"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/skycinema.png" \
\
-d '//tv/channel[@id="ČT1 HD"]/icon' \
-s '//tv/channel[@id="ČT1 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ČT1 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/ct1.png" \
\
-d '//tv/channel[@id="ČT2 HD"]/icon' \
-s '//tv/channel[@id="ČT2 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ČT2 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/ct2.png" \
\
-d '//tv/channel[@id="ČT3 HD"]/icon' \
-s '//tv/channel[@id="ČT3 HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ČT3 HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/ct3.png" \
\
-u '//tv/channel[@id="UPDATE_PLACEHOLDER"]/icon[@src]/@src' -v "http://192.168.1.50/admin/img/channel_logos/CZ/UPDATE_PLACEHOLDER.png" \
\
-d '//tv/channel[@id="ČT Sport HD"]/icon' \
-s '//tv/channel[@id="ČT Sport HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="ČT Sport HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/ctsport.png" \
\
-d '//tv/channel[@id="Nova HD"]/icon' \
-s '//tv/channel[@id="Nova HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Nova HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/nova.png" \
\
-d '//tv/channel[@id="Nova FUN HD"]/icon' \
-s '//tv/channel[@id="Nova FUN HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Nova FUN HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/nova2.png" \
\
-d '//tv/channel[@id="Nova Cinema HD"]/icon' \
-s '//tv/channel[@id="Nova Cinema HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Nova Cinema HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/novacinema.png" \
\
-d '//tv/channel[@id="Nova Action HD"]/icon' \
-s '//tv/channel[@id="Nova Action HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Nova Action HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/novaaction.png" \
\
-d '//tv/channel[@id="Nova Gold HD"]/icon' \
-s '//tv/channel[@id="Nova Gold HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Nova Gold HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/novagold.png" \
\
-d '//tv/channel[@id="Prima HD"]/icon' \
-s '//tv/channel[@id="Prima HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/prima.png" \
\
-d '//tv/channel[@id="Prima Krimi HD"]/icon' \
-s '//tv/channel[@id="Prima Krimi HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima Krimi HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/primakrimi.png" \
\
-d '//tv/channel[@id="Prima Comedy Central"]/icon' \
-s '//tv/channel[@id="Prima Comedy Central"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima Comedy Central"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/primacomedycentral.png" \
\
-d '//tv/channel[@id="Prima Cool HD"]/icon' \
-s '//tv/channel[@id="Prima Cool HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima Cool HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/primacool.png" \
\
-d '//tv/channel[@id="Prima Zoom HD"]/icon' \
-s '//tv/channel[@id="Prima Zoom HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima Zoom HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/primazoom.png" \
\
-d '//tv/channel[@id="Prima LOVE HD"]/icon' \
-s '//tv/channel[@id="Prima LOVE HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima LOVE HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/primalove.png" \
\
-d '//tv/channel[@id="Prima Max HD"]/icon' \
-s '//tv/channel[@id="Prima Max HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Prima Max HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/primamax.png" \
\
-d '//tv/channel[@id="TV Barrandov HD"]/icon' \
-s '//tv/channel[@id="TV Barrandov HD"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="TV Barrandov HD"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/barrandovtv.png" \
\
-d '//tv/channel[@id="Kino Barrandov"]/icon' \
-s '//tv/channel[@id="Kino Barrandov"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Kino Barrandov"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/kinobarrandov.png" \
\
-d '//tv/channel[@id="Krimi Barrandov"]/icon' \
-s '//tv/channel[@id="Krimi Barrandov"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="Krimi Barrandov"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/CZ/barrandovkrimi.png" \
\
-d '//tv/channel[@id="DAZN"]/icon' \
-s '//tv/channel[@id="DAZN"]' -t elem -n 'icon'  -v "" \
-i '//tv/channel[@id="DAZN"]/icon' -t attr -n "src" -v "http://192.168.1.50/admin/img/channel_logos/UK/dazn.png" \
\
/mnt/C_W2012/Users/vladik1/Desktop/guide_lcn.xml >/mnt/C_W2012/Users/vladik1/Desktop/guide_channels.xml
#update <lcn> tag in ascending order (+1 for each occurance)
awk '/lcn>0/ {sub("lcn>0", "lcn>"++v)}1' /mnt/C_W2012/Users/vladik1/Desktop/guide_channels.xml>/mnt/C_W2012/Users/vladik1/Desktop/guide_final.xml