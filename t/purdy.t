use Test::More tests => 101;

BEGIN { use_ok "Authen::DecHpwd", qw(lgi_hpwd UAI_C_PURDY); }

while(<DATA>) {
	my($salt, $username, $password, $hash_hex) = split;
	is lgi_hpwd($username, $password, UAI_C_PURDY, $salt),
		pack("H*", $hash_hex);
}

__DATA__
50917 unclasping eviscerate 2173ea3940b990c5
50482 jams daylight 2bb8a232fbc3e299
32451 regurgitation Portsmouth 32afa55e2701240b
37825 Sukarno orthodoxes 43dc30df1e8b1756
23197 cartridge spliced 18ec4c4f4200bf1b
59499 solubles assassinate 4d32bec044939111
58414 upsurge Phoenix ca283c9c87cdd433
59512 Casablanca emasculating 3d48b1a76bac2a72
26962 Yenisei growing 99654fa7406d346d
3755 Avicenna demolishing 8c99f82e714f87ee
10311 instantaneous prized bf9b06436508459f
41216 dreamer punchy 152dbb5aba1c37f1
40670 Barber dowelled 4bbe28dfeb876aed
6353 unlearned eloping 41c3bebf40033458
54771 farm disturbingly e7bfae8ca773a9da
43455 philosophizes paperback 79f6ba0aa558e019
58091 caesareans Banjarmasin 01104cecd35d70d6
41077 plaints conceited 4c05359668752fee
47365 debris drown 749dd3cca2e8fb0c
10135 huffier uniforms 4b17506ff6d3fdc3
23234 replying repatriate e92f02b7840d166b
11450 minimum exampled d5f398a84c235e79
28980 subtitle Edinburgh 258ddb4b5ca5bfd0
10298 sailboats prying b4d68355676365fc
48333 heterosexuals librettists 52be595fe7df0640
54741 esters Annette d0ea41036531b43c
34699 catechism cable ad20518d562c34d7
12678 celebrities patientest b7bd3da75850290e
2480 autistics blockade 4d858b7ef7e4ae09
14234 Azazel uncorrelated 24b4a1f72a8841dc
8583 pretender grows f6219a31895058bd
32132 Cinderellas Everest bf1600d28364e567
43566 traded spectacles ac98ec43215bd993
27717 elate spry 307f785aa90c55c5
33771 declined contumely b792dfdd9f295353
45449 bewildered refed 653b12f15e49973e
48546 orchestra snitch 766b3e2151426ef6
65349 unashamed terror a52e6d43679edacf
10783 squadding perspicacious 952f7ee350fd15ef
23600 croaks righteous 72b7013b685edc7d
24897 sunning budding b48ac99f4f5f6161
11302 fazing pinpricks 1f74f437fd5a296f
59473 confluent enfolded 0c2a6a9c6e5404da
5081 branches speechless e50b6a3d67bac1e2
43679 limpid redwood dcc3be4296bd10db
43103 legislation Acheson 11f965bfd4c50222
57810 candelabra certainest 7fae0fdf20d26895
25919 xenon tonsillitis 883081735692e435
49158 subpoenaed Yellowstone bdd8adf8695d8904
15030 fleeter reconnoiters 2ecef5e8561c4ca0
12828 cerebellums payoffs a94936398c312bf3
30462 independents archers 2a474319d7af3e21
50444 nationalities telltale bcd5b7987b2f0b16
37992 magnetized camper e31a50ed3a355f0f
5249 Piedmont naiads 585ca8aac2fb1301
29915 airways Mexicans 3d786383fbb4ca9b
4014 compelling snorkeled 412c33d896369888
7080 swindlers corporals f0b4ae14e617ba78
61910 build outriders 721f44a234d6ba09
49483 shanties tryouts 4f224ff06f671034
48962 presets firestorms 402674708a7dbd98
24032 clack Theresa 6cc9d24178b08380
49908 Afghans speckles 1c81362f9d344a54
8309 Gila functional 3a4331f579fccdb5
16585 localing innovative d40fcc7b479d78fe
53946 reapportioned spaniel a2028831ef5dabcb
29849 sequined corporations 88e0129d9813f71d
36043 misquote anniversaries 5a332e09f26e1037
58509 studded emulating cfd5e9f0654f50d7
18025 unclasps Minolta d06a815a8ea2af1f
46623 upheld binging 21ba4c1e410f0b2f
62399 decompose sonatas 9f5695a57b629496
61285 packet wan 41e180375f081529
16030 heartaches maturation d3b4e4abc7cf1c50
26741 banquets razed ddc8624e02d74cc7
38398 caulked unassigned 76f73995c28b11aa
53377 demagogs branding d3b5c73fce49fa05
32981 hydraulics fleshier 2e16dafb217c97d6
18206 tourists anyhow 8bbf1a205bc2e3d3
52705 trickiness Poe bd1de4903d9a80e8
63160 rig lactate f15f9bcb8631440d
4129 portability Kayla 88ae53fb9ebfc921
62274 laze dolloped 178f242cce7a00d8
1222 palimony Nanchang 97245ba080badd08
35741 chatters traumatizing 5edcc3c484346d2f
48874 rugging Trujillo db5e24c74129efb2
56315 detoxing contour c2181e40ca8a5739
65215 stridently swamping 8cadcf6b4c376f65
51574 sensor tributes 108c235708572ae5
59724 insurgences swaddled 78515450c5128345
25998 notations skillets 16c12ebe78617044
37111 rain Bridget 318f9bcee17253ea
54267 burdening Salerno ac9672930aeefbb9
16499 Cerf revived 664f851dd8f61b99
24056 stuffy bourgeois 22a9828be0159bbe
4479 stars creak f3d8359b416470b7
3410 mushes westerners bedbf5073d92d030
59737 Chappaquiddick repudiated e5ff41bcf60c1573
29704 ids clomped 0a911a5f08240917
365 mullah drivel 4e710db11447581e
