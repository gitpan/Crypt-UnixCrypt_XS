use Test::More tests => 101;

BEGIN { use_ok "Crypt::UnixCrypt_XS"; }

while(<DATA>) {
	my($fullhash, $salt, $password) = (/^((\S{2})\S{11}) (\S+)$/);
	is Crypt::UnixCrypt_XS::crypt($password, $salt), $fullhash;
}

__DATA__
6/XkquzAdkWOQ xDM8<6.
Z4Kw8ue6oAyyo D=8qz.^\B6>J
OMhe78OvXnfUk qlY~Kl7l1>,Y
UW4ntNxS4JOhU d8LR3@
sDnNYiwDbtGsg bSo!:;5P5P?{//}$A
V0.R5VWmYxWao Z1
xJQTrXgfSJl/c e(pf(9`hNui+p#;Ytyj,H1'pYD7eBH-]fhUR=&FgE;g:EEW`o
14ONTgtw4rK1I IZ":kzmi*|IVK;S=uAH2D=~s#2#tFJW;,s#
.gj.c.WO5LLws l1vF-7~4x8_E
S/eTmMGsm42IY 'T]Z]idpJuq.vc8mm6z{(,5ixt0(iBy1XFt`=El
LSrjtkVD2XPd6 "oz.5h&'b1gc-DbPH
3v0Lu8eC0Mk0w i?bSPQ'zmVTLx;]syH7<[3
hYJd6Oe00kxaA ZWq!Oc0&5$t!*3|TMoqE<xzpHJmRAc?uRR~N(
IntGaFCEVSsh. )/CM/:MvRK$fC,pNWZRke1AQD=u!Ql!%BEpX+5u
4qX9NMLG/H/p6 OyfqQL
yKHIjoYHPRRzA G*!|[ZSWAty$!`{
WbwPMXzxLLQRo @3Lg@a
PxNCbMlo.19kQ FRgnyy
QX5t/BqMqhtnU @z`{p"6Txwv.Q"7hu<R&fx8DMP{:W\q-s<#}KHa^21
S/vjtfrpJ/DTE HtMJhu~5mxn5u8%'zmHUhgPcC^{6hA3/\
WIunboYMpbNaU DRs@,0Whqq!iZ}kiboEel
g5PAf9tr4khd. 2.f\_!0=Z?$"a@x4Piq^!4k"a*L8I5w
3ocTonWmoQeOA sB9,6Z,&ji%-_f4p:77\IrP9QX_7,&k#<0t<[~l?EfM[!\R
dkeHdz7G677NA ,j3#/l<_YZY`+NXOd3U2jV*Z{2`;9'?d2P
XlxMeR/zmEur. -T|+D>jW;CD^qd~E(,b3Wo.I,/`c!CJ'Iz[g|_Cm43I
39lpZLNCfaDZw A0~^tZs/l8.xK
AM7IN8cFSKqgg SHh3
HhT.IkXLGrne6 SU^vZs#
k9lrecXCrQrkY t;nb@Oeu241Wd
lSN4cgvwW242U m#u>6|;U/r+SqoImSih275/2t5B1>
uaE068Z0.jkUs @|^Qlxc`YH0kVbd6?-U$u0NR9vzwWnI=>2&Fxj
f.iNsYwnQzZFs e4__Zbk`r9RYi6pFuC,B8xT:
18PImClvsF35c j_
GyTkMe/LaOMvY n^f@`ps7>uRDqD1[[!`6s<w{zu
Of8wuVuGsKx6Q A%\
qpBHiMuumCynA S>.}rbMNzU
jy8neLkn.8A7w A5%M<4zBv@ipg)L}Z7mu?#_^
RrnMhfzWGS3DA iD5Pe3A?*Mp:_wD~|y]syV#
1WF1KS/KZsLs2 FYt56*",6$B0`1pbpW:jK1\+]1*lS^=7\T)}7]W~
pK/JMYbNmbzVA %Ns.Y?an.xBV,1=9U"F6HUB"spx'
GuZO3admD3CQY gP"9/1pO0O208/n>KuaC+RP}Y@tElQG:V#KlifL!B2R
vReb4wKAsDGN6 ZAwhg=1#7K#Z0$o6RTr}|SXza<`E71?k&\.vA
MIrC9NFTeif9E !wbmKNy4pOeSf+ypPU],YY7O,QjzZ'J{SZ4rOzW
wEwvgdSvBNbdU JfpgphB'}:m,|I9Gg@]Bc*~pFX!7}sG|QKD;'G02ZR*@WQDp
bfiLQEkLxx1HY T>(&#@X_f%DMU`FD-)n>DdL[J
9g7yzbuuQcofk HD24C+*oa9B-KIkErs.r>*F`5_LO57MSpxij,\dwHa
mPnIlnEdZ7J3w MD71<)oI"rV@%ip&"thwZ{2d0qDw=?vJ;gWm=P6aM<jNaOex
ymIB2tf6HFIiU TGIC]agf~$bB^[s
z3dVZR4PAilH6 L|sm+XO[S3F/"EbS`6!x}}P%1
AWqOfxLtBchf2 %;
WRhZQ.7y6mius |E+'c?*a8]S@kLJ(]N=PXK`L#Efv)Z$[(50;B|YVsFBl`
2M83DjWRSG52g KB{WPuR*3FaK;x^7,wL23Vl["#I'd[D}NPjo+!DMp
F4oJSRlITdHPI h
cxYDUUgrHpg92 ua8YB?\1WM:
NYoeN.wg1EbLY CIQF@7=%:lCOg9tv$s1:L]LT4CL;-E7T
SmS.d7B8mk0TY (x*FDH0-]A6OMFC
yAsvoefiVQdYE kW^r2QU~NErz}S5Y'6I=LOU39sR?b/xSt8+3MU
YT0/cMJZKB8wc "8m)z''.'hXMejo)n81c7Ot
ziJV8kF9y4zhw |vD)/b.JXO1Km_^~0k.GTgUwP)
4w0uKL5iX7.LQ vkW3#gU~x7:O=pn!>4s/qz/<\lx-Dkm>
CTJRJZmFT3z1w )1D
V5sjgd1YDMd3Y 7]uLU4T-H4s
J7IWTxwjSspHU jOeg%yK[12mk*X}JF
ILAZL4GwJgs3c Jkr6%LJwu7\nJF|yN~,55Eqjt=4^l{
vFDsKamICKemE v?+p&u"}`n.Gj_0uZ<-+aU(>6cu+9.kO>G]!yrZ+))ATHE0
vRQ9B6mZqZSMk L;?hnP*'&$?XRA?Z9<TxtN-Q
ey36wQS0P211k 1kS!,wrtg:gPsY"yap!-C
4y/YWaRSZBfwE */T@/iB7W~g+]jc:<hYt`Y36281e';
BmEsY.jB/7hQk jy#$,@aUkxNIzDh[dlPzeM_?=l~*LHj89QG.]+tX?YDr
/zM2klf4ALf7o I_@N46H(l`#Zn;?,[/BSLF-BYmSx9g(jv7Dks{C[h/6/R*~
xzn54VDtCgb5s i;v#Uv}
U3AMS/XhCy/RU w+pU`-
vqAABHqSY32u6 B?koY~~QtRuO{;CDh=e
1BDvziNKQNoqM f*:vwo0tH*L&K.z-D
ujcNnCUvOj.Qc [3NZCgL{@kYmL&)Jp}7ntEw$k6:`D<4,^B_e
luDVpcSgdlWek qYB}kj}#>_.A6|VxI@.cqwN]xNe
79TdYGU3deY1k O!%cUn+$&+-$pVEoy@0{EN/hjq.{V669
oIcrD2Lsiwk3s 6/xrJG~4|'*lPgR
qVP55C1zjiPzQ x7R<jH:X|\QN5(&@/?~1vYp943r6Spg7N#_,y0x}*n3;|YI
Zww/YrY8ZL3bo XG
g9.Cy3TUiF3DI @:QYWy4C4_[L@NOnF
736Gft.dIwVFI S/kx_{`y0d#Oafw<{zc$4'E'{*80{8$7ug<NVi7[M&gd12j
XEa8ZZAUFNDtk pA*GqN!+|P:ElE}AKB
e3nqb3KtX1kOs #=;+e,8cy@Qq83NmPIIzhC-tUD-B0;M|G\[hY?aO7PH
qLJo3BtAX6DtM 39o2T00l;5i]rkr
xTwYWMtz.BZUY rBq$g$?
LJc6GU/pdqgF. ]w<
uNUrhxmjO94gE |1T@?Ucwq<x;i4c2@EC"y
KCpSs3CRjryO. G!@"
ELtNohtLkXx5w b;;-t/*FDSo9'Qvk2YW/N<I%V`?
tKGTqoeialTvk JJi|@W{yDI/@fI))0-C<ijz7|:EG{j
xFWNSfDIpcir2 NP(0gI=j{'\GX"ntR6rfI\Wi~Kvomm%%#}PS,t
/MkCQBNNyGehM -_9L8FJtL]:qOK
zD.IlhOAKa7Zo >owA>tRQ}6h[}zaVP`Eup^6~i*I2@&8"[l5D(BS\)x>`
XbVC/0ziASPEs q'{=kPn\z:x))&/aJ`UJVD}b(8B#i$4h_
YrFSOhkWz7/Ww L*f<a|ID=kgGw/vvBXkgne/gD^fYt5Hi2`ZP
81dC5QFQenEK6 K_$?+LWYRoJ7
QbE2WEGRicSME zwal`v\q).z\2[$W|$b_pT=>Clq~;x-w
W.t5HYAIZ8adQ QaQ6=a0JbZ.KF5K_qcZrWvo~_?!eE
u.ykyPbEeiwPU /y@7cEc*|S[87Q[S1m9nIs?R57q_`,A>I
