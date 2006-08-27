use Test::More tests => 101;

BEGIN { use_ok "Authen::DecHpwd", qw(lgi_hpwd UAI_C_PURDY_V); }

while(<DATA>) {
	my($salt, $username, $password, $hash_hex) = split;
	is lgi_hpwd($username, $password, UAI_C_PURDY_V, $salt),
		pack("H*", $hash_hex);
}

__DATA__
50917 unclasping eviscerate 21001389884c2012
50482 jams daylight be51b11ee79c3f3c
32451 regurgitation Portsmouth f650e53db17033d2
37825 Sukarno orthodoxes cfd81d5f0bd4793a
23197 cartridge spliced e54743a7367b75f8
59499 solubles assassinate a369920a93b1f42c
58414 upsurge Phoenix 1fd2bee0f8822b2d
59512 Casablanca emasculating 131f0c727cfb2047
26962 Yenisei growing 62ba5c2d11df14f8
3755 Avicenna demolishing b5ab4adb494ad548
10311 instantaneous prized 8dc8c5380ec55f94
41216 dreamer punchy 7f32ef23593829fa
40670 Barber dowelled da9b93d858d06a92
6353 unlearned eloping c80caad73e742f5d
54771 farm disturbingly 3db83db0fe6df9d6
43455 philosophizes paperback 166b7b2274cbb7c4
58091 caesareans Banjarmasin a01b2f058933cd62
41077 plaints conceited a239d812093a40ae
47365 debris drown 9b93dae818428250
10135 huffier uniforms 65293fb967a58cc2
23234 replying repatriate 42b55e6b5c38581f
11450 minimum exampled 1e23769d176b996f
28980 subtitle Edinburgh 7222a9271ba4f33d
10298 sailboats prying 68721f5b5237e833
48333 heterosexuals librettists b60a284245ddbfbb
54741 esters Annette ae5e0566fb86d63d
34699 catechism cable 1339591d681b73ee
12678 celebrities patientest a49aed074967dbc8
2480 autistics blockade 2bc959bf7b86ad9d
14234 Azazel uncorrelated 825f0845a9c69354
8583 pretender grows 27d64f0b3c6298f7
32132 Cinderellas Everest 4c7218fddcc58e92
43566 traded spectacles 8c2ca3768014de05
27717 elate spry 774f4210617bcc6b
33771 declined contumely 3d73997d8919d70c
45449 bewildered refed 6c9ef62b2f98a21c
48546 orchestra snitch 8efbb267a85117b4
65349 unashamed terror c438c8d25539ac6d
10783 squadding perspicacious 2fc1b409569dd729
23600 croaks righteous 9d7373796d7fb66c
24897 sunning budding 6277a750d13ba3f4
11302 fazing pinpricks 49d2f47ce9d70c20
59473 confluent enfolded 33f6cd877cfb27d1
5081 branches speechless 5ee953b1d7ef8c2d
43679 limpid redwood 652204a39d28deee
43103 legislation Acheson 96f9dddbe75a09bb
57810 candelabra certainest abbfbf8d9d40ba02
25919 xenon tonsillitis 87676ac1b454a341
49158 subpoenaed Yellowstone ce0329a13f30d075
15030 fleeter reconnoiters 0c79fea4003a29e3
12828 cerebellums payoffs 608e7272ec1c1141
30462 independents archers 2a474319d7af3e21
50444 nationalities telltale 597dddde8f89ce3a
37992 magnetized camper eddf9c6a9b8bf890
5249 Piedmont naiads 68433a546b98a7a0
29915 airways Mexicans baa8858ca4b6bdd9
4014 compelling snorkeled 6876069d85f8af53
7080 swindlers corporals 7c3240f87841ff4b
61910 build outriders 6f18b40c7f3e398a
49483 shanties tryouts 399ddb59c0a9cde2
48962 presets firestorms 169f6446ec092727
24032 clack Theresa 5dfcfe0cd513c153
49908 Afghans speckles 10914508aca3b16e
8309 Gila functional 4e57fdad3d061fc4
16585 localing innovative 2953830df2e9e206
53946 reapportioned spaniel 1dd238357e7576c1
29849 sequined corporations 38f52e181051d8c2
36043 misquote anniversaries 6a104352118268fa
58509 studded emulating 09aba88cc9b21b16
18025 unclasps Minolta 6bbb684193382f84
46623 upheld binging f24db918c180188e
62399 decompose sonatas 2c2efab308bdfe6a
61285 packet wan ef194fc7875d54c1
16030 heartaches maturation 8f3daf9f5b11c7ad
26741 banquets razed 35d6d76c33ce69e7
38398 caulked unassigned e07d59ddb0024a2b
53377 demagogs branding b7545de591b64ef9
32981 hydraulics fleshier 5718df3a778aa23c
18206 tourists anyhow b100d514d66841ac
52705 trickiness Poe 74613ddd2fdda465
63160 rig lactate 8513ae1109c34c51
4129 portability Kayla 6231086969e4905a
62274 laze dolloped 2b36aba82f6633c0
1222 palimony Nanchang eb34cffcc4905fa1
35741 chatters traumatizing db9b2a0378655ed8
48874 rugging Trujillo a8d99ee58439077b
56315 detoxing contour 88592091f7520443
65215 stridently swamping 52699cd7c15d30d8
51574 sensor tributes 5e65b05238b2c4b8
59724 insurgences swaddled ae4753084a3de474
25998 notations skillets eadab2bf320bd680
37111 rain Bridget 2b285818676d38b6
54267 burdening Salerno 5e088a891d979dd2
16499 Cerf revived 3123b4d0dd1124da
24056 stuffy bourgeois 26b2256c42f56a84
4479 stars creak 4e157644622cc0c6
3410 mushes westerners 7528734a877e5bab
59737 Chappaquiddick repudiated b01f3fa64b19b6ff
29704 ids clomped 7c04a09c1a2fd525
365 mullah drivel d4982b580c0c6bc4
