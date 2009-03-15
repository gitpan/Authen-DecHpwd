use Scalar::String qw(sclstr_downgraded sclstr_upgraded);
use Test::More tests => 401;

BEGIN { use_ok "Authen::DecHpwd", qw(lgi_hpwd UAI_C_PURDY_S); }

while(<DATA>) {
	my($salt, $username, $password, $hash) = split;
	$username = pack("H*", $username) if $username =~ s/\A\*//;
	$password = pack("H*", $password) if $password =~ s/\A\*//;
	$hash = pack("H*", $hash);
	is lgi_hpwd(sclstr_downgraded($username), sclstr_downgraded($password),
			UAI_C_PURDY_S, $salt),
		$hash;
	is lgi_hpwd(sclstr_upgraded($username), sclstr_upgraded($password),
			UAI_C_PURDY_S, $salt),
		$hash;
}

1;

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
1309 *7c5d15969f7568e89c49c58e00c342da43a7ab883b247051a1a3aa91 *39d833548294a077f4656d93b2206eb4 e7a80f754cdbaea9
2644 *a5ce954374c4e698d92d5a493adca9835da2a166ef484050119dda22ff00456ee74b1c8f27d4bb *f418127f4870a887c9106fc6782287a8f863c75b83117d5b7802c9e54aef0606f8492eb7312c ec1268815d93e85f
63778 *52ec0f82328a66318e25 *b917c57e46455827e5264061e6 948cded0436227fa
64825 *1f84af8a3310e3fbefef9c *677d4531d1483ff8d697e04b27c46b691dbd1cc5db4e25a920da541d27831b265d5704 714aae9bf9c55328
4008 *6f56e9f3e10351c24c0b83ce9a9d37696d68fffff1d1dda0630172b7727b9ead324c48 *4866ee9492fe0eacb57f21b6e0e75263679441751874c8c9019af9f010c59f1c056fe6fd923ede 17e70a72222d60ad
23588 *015cfcf26535 *92 ff3448174596578a
19274 *8a39cbd8349fac1e9b712d221c73845d33b983e290bd0a6d8d648409cd45070b16ffb54f *c8f4eb9a92a28443b9dacda925f1b7 612c5a9211978cd6
14053 *9a3376f4bdb7b7e4ed7a2d2d7ac9cc70d9aed15dee6be59cdd *743a23c3beb32a8aefb417a42469300f85e809a5041bcf20ba478712bfdf3e09e1 76647cb6c25c7ee8
2283 *8e7f2ee57118ebbb17583c6474da939f *8744dd2418200045101ab6f91f8bed7216310124388ad1 21fed8dbfb425340
7490 *24351ed636f9eaed6ea6a726ce6501f44e1a5cafd092e25a0efe97 *d78488f97628ae748441 9fce61bccfc09073
1693 *8e *99c1435884e19ba407c1ae1f2947a91d76 be631d8696fa3f21
61321 *7ad867e760f8d001b7877dce54bc8a99666d73fd11991d09ac5fcb313fcdaedf *5ef0f75f375950e566f6d757e622b19443741db8f72bf7e986e42babc2175b465d134d1493 e7a4a4600be99943
44456 *fb *a2817784c806e7006677078e0a48dd989cc0 c9272fbc9331ff7f
39270 *945b7e9a34810c8bdb401dce909fb608f92f34af2ac9 *dd61d728b60730134e08dedf1ec6959fd207af840b 660dd3691e203e08
25617 *30c4bfd6a992 *887d62e9fd7b8ff6f7afa2c747b71ac521057e3beced0ce29fce7f13f134fa7e0394c3 291c9f303932585a
25362 *87ef1991e36468e84798b9c086adc681813cd46a *39 cfeb1b58e41afe8c
41450 *1f90ac5ca0d77ef58964c543e8 *f7f4ea3fcd802c8df66bb1ea42b4807c e5c2b940ba2aa11b
62262 *a7fc2db715ff2104dedf89ee * 42750ea08988444a
5735 *f64881709c999604d3ea15fd69d98e8cfa5e72f3d1d1 *c7d86e 430565d6077dd8ec
28320 *b7a559b2033a3d097c1025bd92880e6459a2411323 *72c5844ef656 a6ded426a475df1e
24597 *edf57a35717fab9421 *36c8cba0a0bda1b7ff1890156e3c3c6a2f7ce0d78f93b1a9e4e7d332 d71bbea685da2a23
50069 *861af199434770e4 *ab2c86ea5e18 67e0f51418068a05
17152 *02633a819035813235df214b90e84794047a9544c75fad0b2f4e2ffbfea82ff02243930b927bcc *cca6a8b77a36a98867630dcfdd1df2bcbe54110b4a2f96a0dbc93813405f9d6162a10ca5f531b8 1abda8aeb9dcc634
27302 *8dd87c81e273ade84eb9f596448172b8900a3c12e8df402e421d9d466a7b262337e18f *c201da658943837370519fb8ecdac311df98e2083eb9efb24562e3b03fa5f0590fb20f95dc121a 479cddc677215b1d
18241 *7574dc952049108be4a9f68c4c7269797d *33374b2bccb44f01a0c0807ca3c39430e7a9be182d133c0af30d478f80063c672f0a8efbc356d5 0f9c98cd5ed28602
54687 *b743e02b25bb1e69690968b7f0dd211c6a80cd0eebc058ff9e7f3f362aa4a8c39e66 *dd132868486576706e2c6f95429f162abe2eb0d83bd7478c870444522a4c1ffb16 83ed59edaa35708c
27356 *2d509445f251f3408c1af500b7567d8a19d806c1 *a16e513770a3ba9337085e2f33afcc7d94576106a9aeef50ac190e16 4d731501b6716c59
23623 *539c7aa99a3c63c41b423a02e3da617dd3672a98250bc71627fd7d *d26eb59a1370a55a369df40f62c1499f177ef38df2d2ff387d736b3a95f7156664 e1d27519f444b52e
40851 *cb3fd90c0bc545d776af70eac7bd96 *8883c4e7eb 48f0eb342816f40d
566 *c2729de86ca2b2c77d0c48e51f60e79d394b70ec5ea94aaa7796a10985402eb5 *a9e0678237db62bfb6920a6cd8adcc620a9c6a67858aa540a1 5d0b38fbb58bdc40
63818 *9a32036bf4afff24fcd600661f817485c2 * 45946248e7d02a83
49387 *68be012990bb2c0229478eace809f64417c462c0d752cefda5 *af89831b6dfc1679af cee492547f87fc0f
13315 *c9f785ea92f01d424ed69cb03648699cab6c21dac680 *b525c1faf2dbb8719d1b3516f1d6c2cc98ab69541a258649 b8cbc23dc7435b25
30206 *39 *49cd11d5fc6a2bdc68d3584a0e92cb78315bbe562a3cbab2 e7705ea2cdfacb18
45942 *23 *5c51e2d3 501cd81a7adc9c1a
22736 *ccc7d845466d61be9a5971e0a55de0b5b16e87ba121c6f44 *906bdcf51b6112dc1c05d5e6bb 54be9227efe8503e
62601 *33ddeda859 *3c68d76cb96b1738a948d8d60da98769f426b6d50f86ec cd399d5d36190db2
37938 *7e2d0b94b312ce476bd61331f810f5956bab1baeed13ac0d069ab8b56406e3 *bad377af15de12127d 150f810b9bd52e73
16581 *ac312bee0d3fd8814be16489a4931313be *05aa3f9fe0c399e14470f1f64887b51fa38f9f 875315438cca78e6
15653 *0ce145500eae256a2c20ecbdbdf52b2a6b80e5737a670bb3d0839650910f9f1d20 *4c3ee52ebf1cd46848f77888f368b36c54b58742003b1047dd39656f07b42b680b1284b09dfa ff6a4457314b6e96
6277 *c6893f277f8f0ca84913a1d4c3b8a63993c472ead14e73c093b2 *aad25c24c5fc679cf33ffaa1fbff3915bda977ecf0b3a76f28195f dd3c8e8eb2e60ca4
7054 *407c804963b77c73f95fffc3a8062b56d923be0dd076a8667aebee294794d7 *715bda23f39964359bc0 3f98123881f459c2
32870 *01f8df4d727b639bf4907cf0f1 *027d1ca4daf80d35461799f00972563b19b3689e1166a0121a9f0e0743bd0462 3d713cff308e1172
56693 *842eaa9d85c6 *2d212d440015d1b9d95b7a8a153262dd5d80efcc e8d0511d30685d40
59726 *5e222dfa41 *91d25df8b529b0eefc2fd0f018dfed8589daba765b6f1f7d49e586c5b6c64719c1 12c311b95e772bc1
38241 *e824d32fc615838ef51c4bc1aab3e325c649 *1c48cc9f476bd4874c229b110918bf939cd12bdf8da839a5d739b9e94b665badc8c8f0fabf1b ae8869a1754233e7
18013 *5e *59522949fd17ef13aff50af1532f946a134deb919c 3173bc8b9745e3a6
44143 *891ce9077a607e28ac9adca4993b8c23ff5be604258ee674201bd6a498796ed3 *7cfa0088 f8c020ed5e052aea
12822 *5ef8f765865e31a533b41670743fc83aabfa27f1e6159c23 *06d4d7161bff2d6fc498a9efbe5ce08b1e6c89470384d8bddfee 37b190feea13ad95
46758 *2dfcc3407bb658781dfcae9cbad6d89aa722c2 *0cdf55318582c20eef938ed223b0ba5c6e41 7279c6e97dd9e05b
10214 *04d03a53ef7cffff48 *f842595d cce439a910a3247b
28171 *5028f20bfbb87c *bf9606cea79b8e3df637b35d7f12e9e3 2108d7132b1bad7a
15346 *5f97f438c482cd73c50845e132ced839f46f6c2bc10619fe660fe5f8e612e59112163d07 *4ec58241e1ca3e80af25b65486e3746e8811acb3820f89958cb12c59f14e1dd02881b057c43e bc63b8b6ceaff927
53284 *39831a78c784063dd836b76ba5008f41 *e6cb8a2354674c53caef1a7afaca2c e96b784c8362c3f2
15557 *38dd2066f930eb5d9de73a7e3a1ccfe2266eeabdfb46df74c248e240a7469d26 *7722c0bfde0a4b899062b0 5be68d4f5183f90e
26467 *6640456d6682921d20edafd0959f69 *703856c1e2cf746cdbf324df ccccc00de93168ba
18831 *5c6cc0f0595b0936da9eae *de0c27052f7fceaa2ce94b5be3953370d6b3922c3d69bc98a4dba58b a9f28c5aca5feb91
17507 *08a87475a5d017645a8d8e5d6f5c71ef1524ef05c508d953bf9433b97ef2 *1e663a22b77d8d3a1afaf2fe7c7f3c603befe445fa0136be65543a161a69a4dfe0483b26 93db6e1d235d5788
9052 *0f11784ed432ff6133f146 *76a8125c0f011f78af6a1253d9179fc37942bbb7024f10543dcadbdd77a5ad40f5cd1a8f7b 056467cf5d673c9b
14899 *24ec2cb26dee05334b1ae7299487f3abd6f0a06e26fc679845ebf9e9276102624dff7ed6d929a5 *e36834b238c392a1a40f780df3fa0e7ad1888f7a9d651829f5d3f3dcc08b872bd3b3fa1023 868414a06bfa5fcd
60053 * *a3023b5e194a59fd738651cc7d0d6ec0dfa6226da7 2c83cd9aa2b2e7ad
22976 *3ca18b18899b494cb435adeb59627fe5a3877cce4b61860512d9c9067c73a42d2d3c7ae5 *fa898d4b150018579aa0ad7d 59ea50f9e9cc2d5f
54496 *7de90322ef4eb737b35866c11aa1838c963ec143f607 *294b d1e58ccb1b4ad1d9
52965 *25ffe151457ef83a7ce8f7118fa8b3ad2ccdb1ac *7e37d5fa79ca678951e54f1d30384cc2b954f50bd37c11 4fecd615dd37cb55
33116 *0f2492016ce746fb299fb026edbc *36c67ec91ce160605a2f0ecb859479d13adea777a46b3c31 febe6652add7593c
52698 *8eed6a1c5b1677767ba5a05e369e6794af6487c5a1ac67269bc3 *6fe97359fe6a0da4bcea8d 5ae20c65274049d8
34485 *4b745f538b *0dd33c806f0059a0c99b12016712855fe74b2535cf9c96e693ee a29c1784e95171b4
18911 *b002322c7428088dacf4b2b5429c74f2dcbbb476532c1c4b3ff2 *684363a440ffa019ba4f07574edcf3 29cd4b1d705162cb
62230 *18df730441280bfa37d5cb00d6b584822849f7fc76ac16e10d4aca571f *981495f01747dc76b242962cb67de72b5b680613f21c25897642f91e7b08de87ff6084 0e7ccda09b84be99
7776 *69d695a0e1b2df4e022204 *302a916653e763b4e9cd08 a03ce644d764938d
10162 *e5228563fc247919 * 1dce076d24dc60ec
27782 *2651fa304fbd8a3d1d7d51d2cbe16a *d46040ed2bdedebfc16b0e66f5c29f7c8ac6e90d1a5ae5fc4210b80e917ef1aa34 9a840f7981ee0b25
58763 *81b580 *f79a6c07760f2e231a30a4a0b61263b461e35d91666f3a544da3ec62f2845d1c08 e5af8b95a313aacd
19530 *add4d92f2beaa0319d437d06c19784904adcb6adccfe97def2c11ca80d1f6ade5989d78b *114768d7144cf59fb6 1d971c536f330f0b
56592 *e8bbb3bd29c387ff2337bbeec8705715b6f3 *f6aa600e77fe99b846dd977eef6a0bf1172deb5b76c6 913f52c45baa5990
43466 *81191387b4da8895 *63196f0c3dad77f9ae0bf92a5410ee258df74c1e3203d5829adc01c4db085f1d01db0a 52b75238d572f1da
1553 *f99f7bb19eab125574b7c525 *a1623c4a5368fb1a922057 50bd1bcfd2c987d2
23802 *86e5994768b64d557faee7f9e5271316225367074ebb04a9ab07 *4f2057e6d90cb73453381e80b6c13ac579609e725bc351 88effe6d653f6628
19605 *8acb008de1d5fbf4250a15337d0914fae5d1b898 *f150b5f67972880c5f1acc365056474da8f2151bd9c928b9092e03e87e2390e856d2eb c15c66377516f021
23265 *c3c5dfd37c72545f099c518bc9a3936288a586fecc17449861ec2dcc5b19 *886f9dd491628ca77e56e0e2d31106a4745a284eef63346f13205f16667dbdb86d1887 f4515b01bd513a04
12048 *3b2dcfdac267dca916aaccab4f67b2929547a4cca9c81dac927485f3059001b6a63dbfbe5e *49d7298fd23847 01fd749881dbe3a5
55316 *4f3217a4 *949bebdf86945c541f36f8d213d8ecb7aa4c178eeee5d570 ad2ac6edbdc7b4a4
45626 *4c6778fd9519cce964c143d3 *85ae11168d33005c1e646e6db5a69392d76f03bdaa 8efff6ed1f8fed81
27480 *5faac851a5a98807b5245d148a9a0b3ca9cef083f0 *538e81521f243409a220d6fab162c6451572a1157a289d78 c8090bedd8424a62
55366 *973b36254412ee469ec646fbca091cf1fd9daf0ca281923f55e39a *2e875b62b13509526e1d32cacd49b81296dc237fb6 e8c826db1e4543f8
43807 *bfab37ce52940dc483069b1ec45a0d1254df4a595c2df133ad0b00229f *c6658d06ccec 08a7b64c7b19a76e
51967 *ff233a3f6b3cb585999733788c4f31942b *7a4de9865f1af6facfaf7830107a0446e83b8c66af1cc104d2ad0e26c3dc5b 778863f34fd55e48
57373 *39ba99dffb70bbc93e12522f6a2d5b42 * a07b56d255de096e
31665 *7bba2c155ac59470fe39d02ad88ef611c9c32ced62f64c9e2d90 *830925e2f3e9 a00dfb6a950f0a09
30781 *43afdf60d4f7a31f03489d29a69f58517bf2914eaa1081d20a4efc4bc4bbb89272419507 *6bd448a0bec921cee8f171a796d1bcee1694296534253020cc3f4d835220 af41e94bff8757e0
50480 *bbb941b0a35c9c29f0ed6ee24d2efb28a4e8b58b3f6c6dcccb558a1c07 *cf4a131ac0cc4acb063088f2c891961d3b0882b647e5436e741317de a1b752f4575a14df
32392 *556d187a7a698585de9a300151fd28df2d6c7fee3c421c43ea *da38f662c3798863aa5952a0bde5bdb412054e422eb9170d08240cda3d40013f8bcba414291fd6 9bfe2f8c134dba6e
44001 *f12efacf73213f9615155f *0542418b3e21c0495de8339aa0807490b83d63d8d01d3d2e78e71eaf85192a94633b579188 3dbab673bf72aa87
20767 *c09f94082dfa82592499c354051f02a0aa2157783169ce61a7c95cbfc4ce9595eeea92451577 *d4e8b12e7784b3a32ef2498a53f9854d 28e5526edd91a053
45816 *8b9b255a04a950a58c23 *e003f14b5aae14161c271d1368c2b7e9c10c0ce65872f5 7b6211b483efa14d
40573 *36ec723856946821242e33f0 *4db844e97166 66f76eb04c5a973b
62064 *b7e7ebbe01d95dc144b94aa186ef1f89efcb19f7184e7210cf4f94f6144133b6c73e1138a9f6f8 *7fbd7e67a04131ab0e75f00c56c4c5570f132096402498f300dfd12f85b2 de1d911c4dd2ab37
19479 *3945dd7c00f94db5d75ebb1d94e45cd0da *3ce7d5ce8134f1949da3e51a0ca55435550c 589c33233fc6a6ae
56282 *99f450ef73aa38fb49ad74e49f0476b8566ac561e6664d2906528a64 *413422ea581df62334f0a2e8558c0c74fc887698a6dacb 6076cd0e747d684b
6822 *cd9615d919ce8dd5 *9686bce6cc80 b955aa905ad40fc7
