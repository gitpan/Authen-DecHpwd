use Test::More tests => 101;

BEGIN { use_ok "Authen::DecHpwd", qw(lgi_hpwd UAI_C_PURDY_S); }

while(<DATA>) {
	my($salt, $username, $password, $hash_hex) = split;
	is lgi_hpwd($username, $password, UAI_C_PURDY_S, $salt),
		pack("H*", $hash_hex);
}

__DATA__
50917 unclasping eviscerate 605a4df627b21a08
50482 jams daylight d2134cc23c087a0a
32451 regurgitation Portsmouth 7c0638151bf11d22
37825 Sukarno orthodoxes 9f0a2393c3728f2a
23197 cartridge spliced 1253f9c261b70ef1
59499 solubles assassinate 7b68f462334c1ea9
58414 upsurge Phoenix 08b348e14d9fc339
59512 Casablanca emasculating d522199049ad8286
26962 Yenisei growing 32a9cff7d84ec3a6
3755 Avicenna demolishing 553fd16ce5cf3e1c
10311 instantaneous prized b2ebe77dbfb0ff0a
41216 dreamer punchy 87f7d67aef62f0df
40670 Barber dowelled 517315f8d1e38c1d
6353 unlearned eloping 1ecb31ef07e84317
54771 farm disturbingly 596140f78dabcd34
43455 philosophizes paperback 20c26b9a6fa806be
58091 caesareans Banjarmasin f6a759ebfcf514d4
41077 plaints conceited b06d6535ab27b44e
47365 debris drown 19585080bafc8598
10135 huffier uniforms 87bf8dc9fad7e40d
23234 replying repatriate 0b207ea86bad8f6d
11450 minimum exampled c202b6f7a5d074b5
28980 subtitle Edinburgh 24b39a562f4235e2
10298 sailboats prying 61f4d69db4507912
48333 heterosexuals librettists b0ff108f7458637c
54741 esters Annette d159157f477a1875
34699 catechism cable 497c18249051edaa
12678 celebrities patientest 60fe4ff7a3b4c074
2480 autistics blockade d897cce0a1fb870e
14234 Azazel uncorrelated 91d50ced7f8f31d7
8583 pretender grows bbe77568c62bfe64
32132 Cinderellas Everest 8ac8fa3e15286305
43566 traded spectacles 65d56b6bc0f8e88c
27717 elate spry fc8815babf1bf61f
33771 declined contumely b466a1f588f74cf9
45449 bewildered refed ff84d5c39fd55e06
48546 orchestra snitch 7d06f26e248a1060
65349 unashamed terror f00c309ec2ce47e4
10783 squadding perspicacious 7392ffda678d05dc
23600 croaks righteous 024a75d1c625695f
24897 sunning budding e7582c3c7a65be37
11302 fazing pinpricks 70eb4f3a973cbbe6
59473 confluent enfolded 3636a84f89c08818
5081 branches speechless 17999e649b4e1382
43679 limpid redwood 2c4c33891a4e8f24
43103 legislation Acheson 640aa9b040b41028
57810 candelabra certainest dd6db973910e2562
25919 xenon tonsillitis 42f120f86b6473ca
49158 subpoenaed Yellowstone 84df8c6cafb00f86
15030 fleeter reconnoiters 24a6c5b6bb4a9418
12828 cerebellums payoffs 4accaebc1d4901ae
30462 independents archers 7682597ca56af918
50444 nationalities telltale 9c244656831aca0e
37992 magnetized camper 60c1508a5654584d
5249 Piedmont naiads 4cda8ee3525e1877
29915 airways Mexicans 366638866e8d44fa
4014 compelling snorkeled adb0cdcb4df623ab
7080 swindlers corporals 728e675434bd3f7b
61910 build outriders f52dae2c052084d2
49483 shanties tryouts f75a7c05d1696548
48962 presets firestorms a602505091c051ed
24032 clack Theresa 1832622f7cd951ff
49908 Afghans speckles f0901a3679ba9626
8309 Gila functional 761b22cb0a961a8d
16585 localing innovative d63ee837907c7374
53946 reapportioned spaniel ee9536517261a6f4
29849 sequined corporations bf897037e4fffc6a
36043 misquote anniversaries 4b04ed9d430c052f
58509 studded emulating d7fcd6a907fb5afd
18025 unclasps Minolta c210073a72bd60cc
46623 upheld binging 51c491a76d779a02
62399 decompose sonatas 8c418ed1de047a77
61285 packet wan 1d33b0ba3143aa9f
16030 heartaches maturation cc6dcfaefe94cebf
26741 banquets razed ae893fc04a0f8510
38398 caulked unassigned 2355f1aefcc4b3db
53377 demagogs branding 04fc4878f3587ec9
32981 hydraulics fleshier 0fa673f61ba87d0f
18206 tourists anyhow e802da2e398c9810
52705 trickiness Poe d05edcf893902d45
63160 rig lactate 2a5d205997279ea1
4129 portability Kayla 1a37428d96d09c11
62274 laze dolloped dfd19fd715ae90f0
1222 palimony Nanchang 2567284a91a9a5a5
35741 chatters traumatizing fdc839f1a2e04eb0
48874 rugging Trujillo af8e5b8cdb992f85
56315 detoxing contour e5b1abbebe96f3f0
65215 stridently swamping feafacc3b7ac72d8
51574 sensor tributes 9fe1debfa71d71d3
59724 insurgences swaddled 782433275eb2ad47
25998 notations skillets ebb1bcc7ad538b04
37111 rain Bridget ba938cf04ec91a17
54267 burdening Salerno df32e9787acedec5
16499 Cerf revived 4c1d5a8fa910047c
24056 stuffy bourgeois af43ecf0e106eb3e
4479 stars creak 28630ccd24baff3a
3410 mushes westerners b5d96206efd8f2e8
59737 Chappaquiddick repudiated 487f866f0660fd33
29704 ids clomped 0acf1118cf300bb9
365 mullah drivel 49d7630fe06b3762
