#set page(margin: 1.75in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show heading: set block(above: 1.4em, below: 1em)
#set heading(numbering: "1.1 ")
#set math.vec(delim: "[")
#set math.mat(delim: "[")
#set par(spacing: 0.5em, first-line-indent: 0em)

#let oppgave(input) = {
  strong(input) 
  h(0.5cm)
}

= R2
== Punkt og plan

This is a paragraph.

Vi har et plan gitt ved

$
alpha: bold(n) dot arrow(Q X) = 0
$

der $Q$ er et punkt i planet $alpha$ og $bold(n)$ er normalvektoren til planet.
$P$ er et punkt med distanse $D$ fra planet $alpha$.

Lengden $L$ er lengden langs planet $alpha$ til punktet
$N = P_"proj"$ der $arrow(P P_"proj") || bold(n)$.

La $bold(v) = arrow(Q P) times arrow(N P)$

$
L := abs(arrow(Q P) times arrow(N P)) / abs(arrow(Q P))
$

Siden $arrow(Q P) perp arrow(Q P_"proj")$ har vi

$
D^2 + L^2 = abs(arrow(Q P))^2
$

med substitusjon

$
D = sqrt(
  abs(arrow(Q P))^2
  - abs(arrow(Q P) times arrow(N P))^2
) / abs(arrow(Q P))
$

== Kryssprodukt

$
  &&bold(v) = arrow(Q P) times arrow(N P)
    &= det &&mat(
      bold(i), bold(j), bold(k);
      Q P_x, Q P_y, Q P_z;
      N P_x, N P_y, N P_z
    ) \
    && &= &&vec(
      Q P_y dot N P_z - Q P_z dot N P_y,
      Q P_z dot N P_x - Q P_x dot N P_z,
      Q P_x dot N P_y - Q P_y dot N P_x
    )\

&& &=&&vec("K", "Y", "S")=vec("Keep", "Yourself", "Safe") \
&& &=&&bold(j) dot "Keep" + bold(i) dot "Yourself" + bold(k) dot "Safe"\
&&"MotivationMachine"(x) &=&&bold(j) dot "Keep" + bold(i) dot "Yourself" + bold(k) dot "Safe"\
&&M_"machine" (x) &=&&bold(j) dot "Keep" + bold(i) dot "Yourself" + bold(k) dot "Safe" \
&&M_"machine" prime (x) &=&&bold(j) dot "Keeping" + bold(i) dot "Yourselfing" + bold(k) dot "Safing"\
&&integral M_"machine" prime (x) dif x &=&&integral ( bold(j) dot "Keeping" + bold(i) dot "Yourselfing" + bold(k) dot "Safing") dif x\

$

Vi finner magnituden:

$
  abs(arrow(Q P) times arrow(N P))^2
    = quad & &&(Q P_y dot N P_z - Q P_z dot N P_y)^2 \
    &+ thick &&(Q P_z  dot N P_x - Q P_x dot N P_z)^2 \
    &+ thick &&(Q P_x  dot N P_y - Q P_y dot N P_x)^2 \
    = quad & &&(v_x^2 + v_y^2 + v_z^2)
$

Vi finner magnituden til $arrow(Q P)$:

$
abs(arrow(Q P))^2 =
  Q P_x^2 + Q P_y^2 + Q P_z^2
$

med substitusjon

$
D = sqrt(
  (Q P_x^2 + Q P_y^2 + Q P_z^2 - (v_x^2 + v_y^2 + v_z^2))
  /
  (Q P_x^2 + Q P_y^2 + Q P_z^2)
)
$

@tegn1 shows a glacier. Glaciers
are complex systems.

#figure(
  image("assets/figur1.png", width: 80%),
  caption: [Planet $alpha$ og punktet $P$.],
) <tegn1>

Vi tar føre oss skalarproduktet:

$
  abs(arrow(Q P) dot bold(n))
    &= abs(arrow(Q P)) dot abs(bold(n)) dot abs(cos(theta)) \
    &= abs(arrow(Q P)) dot abs(bold(n)) dot abs(sin(theta + pi/2))
$

$ cal(a b c d e f g h j i k l m n o p q r s t u v w x y z) $
$ cal(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) $
$ a b c d e f g h j i k l m n o p q r s t u v w x y z $
$ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z $
$ A\;  B C D E F G H I J K L M N O P Q R S T U V W X Y Z $
$ AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO PP QQ RR SS TT UU VV WW XX YY ZZ $

== Bokens formel
=== Distanse mellom punkt og plan
Jeg husker ikke formel fullstendig. Formelen ifølge boken
$
D 
= 
(abs(a P_x + b P_y + c P_x + d)) 
/
(sqrt(a^2+b^2+c^2))
= 
(abs(bold(n) dot arrow(Q P))) 
/ 
abs(bold(n))
$

=== Parameterframstilling for kuleflater
Parameterframstillinga for ei kuleflate K med sentrum i origo og radius $r$ er gitt ved
$
K: cases(
  x=r dot cos(alpha) dot cos(beta),
  y=r dot cos(alpha) dot sin(beta),
  z = r dot sin(alpha)
)
$
eller
$
K: S(alpha, beta) = vec(align:#left,
  r dot cos(alpha) dot cos(beta),
  r dot cos(alpha) dot sin(beta),
  r dot sin(alpha)
)
$
der $alpha in [-90^circle.small, 90^circle.small]$ og $beta in chevron.l -180^circle.small, 180^circle.small]$. Vektorformen er mye mer naturlig, $[dots.c]$; nevermind. \
I got a lot of bitches. $ "Amount of bitches" = overbrace(0 + 1 + dots.c + n, n + 1) $
And also,
$ "Amount of bitches"'=underbracket(9999 + 99999 + dots.c + oo, "Neverending, hehe xd") $


#pagebreak()
= Oppgåver

== Blå oppgåver

=== 5.121
Vi har ei kule, $K$, med radius, $r=5$ og sentrum, $O(1,b,0)$. 
Kula tangerer planet, $alpha$ gitt ved $3x+12y-4z=-329$.
Finn $b$.\
Vi veit at berre eit punkt, $T$, vil ligge i planet og kula.
Vi veit også at vektoren, $arrow(T O) parallel bold(n)$, der $bold(n)$ er normalvektoren til planet.
Dette vil da bety at $O$ må vere plassert slik at distansen mellom $O$ og $alpha$ er lik $r$. \
Vi bruker formel for distanse mellom punkt og plan. La
$
bold(n) = vec(a, b, c)
$
da får vi
$
D 
&=
(abs(a O_x + b O_y + c O_z + d))
/
(sqrt(a^2 + b^2 + c^2)) \

&=
(abs(3 (1) + 12 (b) + (-4) (0) + 329))
/
(sqrt((3)^2 + (12)^2 + (-4)^2)) \

&=
(abs(3 + 12 b + 329))
/
(sqrt(9 + 144 + 16)) \

&=
(abs(12 b + 332))
/
(sqrt(169)) \

&=
(abs(12 b + 332))
/
(13) \
$
Vi vet at $D=r$, så
$
(abs(12 b + 332))
/
(13)
&=
5\

abs(12 b + 332)
&=
5 dot 13=65\

12 b + 332
&=
plus.minus 65\

b
&=
(plus.minus 65-332)
/
(12)
\

b 
&= 
cases(

(65-332)
/
(12)=-22.25,
(-65-332)
/
(12)=-(397)/(12),
)
$

#pagebreak()

=== 5.121

Ei kule har likninga

$
x^2 + y^2 + z^2 - 2x + 6y - 6z - 30 = 0
$

Ei anna kule har likninga

$
x^2 + y^2 + z^2 - 10x - 18y + 6 = 0
$

*a* #h(0.5cm) Finn radien i kulene.\
Skjeringskurvene mellom kuleflatene er ein sirkel.\
*b* #h(0.5cm) Finn radien og sentrum i skjeringssirkelen.
\
\
(*a*) #h(0.5cm) Vi veit at for ein kule med radius, $r$ og sentrum, $O$ er likninga slik
$
(x-O_x)^2+(y-O_y)^2+(z-O_z)^2=r^2
$
Vi kan derfor omforma likningane for å finne radien. Første kule
$
(x^2-2x+1)-1 + (y^2+6y+9)-9 + (z^2-6z+9) - 9 &= 30 \

(x-1)^2-1 + (y+3)^2-9 + (z-3)^2 - 9 &= 30 \

(x-1)^2 + (y+3)^2 + (z-3)^2 &= 30+19=49 \

therefore underline(r_1 = sqrt(49) = 7) \
and underline(O_1(1,-3,3))
$

Andre kule:
$
(x^2 - 10x + 25) - 25 + (y^2 - 18y + 81) - 81 + z^2 &= -6 \

(x-5)^2 - 25 + (y-9)^2 - 81 + (z-0)^2 &= -6 \

(x-5)^2 + (y-9)^2 + z^2 &= -6 + 25 + 81 = 100 \

therefore underline(r_2 = sqrt(100) = 10) \
and underline(O_2(5,9,0))
$
(*b*) #h(0.5cm) Punktene i skjæringsirkelen vil oppfylle meg kulelikningene.

#figure(
  image("assets/ggex1.png", width: 80%),
  caption: [Geogebra illustrasjon av kule 1 og 2],
) <tegn2>
La $P$ vere eit punkt på skjæringssirkelen. Den vil da skape ein trekant med sentrumane til kulene.


#figure(
  image("assets/ggex2.png", width: 80%),
  caption: [Geogebra illustrasjon av trekanten skapt av kulene og eit punkt på skjæringssirkelen.],
) <tegn2>

Gir opp... Gjer det algebraisk.

$
(x-1)^2 + (y+3)^2 + (z-3)^2 &= 49 \
$
og
$
(x-5)^2 + (y-9)^2 + z^2 &= 100 \
$
Så
$

(x-1)^2 + (y+3)^2 + (z-3)^2 - 49
&=
(x-5)^2 + (y-9)^2 + z^2 - 100 \

(x-1)^2 -(x-5)^2 + (y+3)^2 - (y-9)^2 + (z-3)^2 - z^2 - 49 + 100
&=
 0   \
$
Nevermind actually. Kva skal eg gjere då da? Sjekka fasit, dei brukte GG til å visuelt finne info om punkt. _Cringe cheats_.

#pagebreak()

== Raude oppgåver

=== 5.119

#figure(
  image("assets/freedraw1.png", width: 100%),
  caption: [Planet $alpha$ og punktet $P$.],
) <tegn3>

Kuleflatene $K_1$ og $K_2$ er gitte ved
#v(1em)

$
K_1: x^2 - 4x + y^2 - 2y + z^2 - 6z = 11
$

og

$
K_2:
cases(
  x = 2 dot cos B dot cos L,
  y = 2 dot cos B dot sin L,
  z = 2 dot sin B
)
$
eller
$
K_2 :
x^2+y^2+z^2=2^2=4
$
#v(1em)

#oppgave("a") Finn sentrum og radius i dei to kuleflatene.\
#oppgave("b") Undersøk kvar punktet $(5, 1, 1)$ ligg i høve til kuleflatene.\
#oppgave("c") Finn eventuelle skjeringspunkt mellom kuleflatene og linja $m$ gitt ved\

$
m:
cases(
  x = -2,
  y = t,
  z = 2 + 4t
)
$

#v(1em)
#oppgave("d") Finn sentrum og radius i skjeringssirklane mellom $x y$-planet og $K_1$ og $K_2$.\
#v(4em)
#oppgave("(a)")

$
K_1: &&x^2 - 4x + &&y^2 - 2y + &&z^2 - 6z &= 11 \
&&(x^2 - 4x + 4) + &&(y^2 - 2y + 1) + &&(z^2 - 6z + 9) &= 11 + 4 + 1 + 9 \
&&(x - 2)^2 + &&(y - 1)^2 + &&(z - 3)^2 &= 25 = 5^2 \
$
$
therefore underline(O_1(2,1,3) quad and quad r_1=5)
$
$K_1$ har sentrum i $O_1(2,1,3)$ og radius lik $5$.\
$K_2$ har sentrum i origo og radius lik $2$.\

#v(4em)
#oppgave("(b)") La $P_1=(5,1,1)$

$
K_1: &x^2      &&- 4x   &&+ y^2   &&- 2y   &&+z^2    &&- 6z    &&= 11 \
     &(5)^2    &&- 4(5) &&+ (1)^2 &&- 2(1) &&+ (1)^2 &&- 6(1)  &&= 11 \
     &10       &&- 20   &&+ 1     &&- 2    &&+ 1     &&- 6     &&= 11 \
     &-10      &&       &&- 1     &&       &&    -5  &&        &&= 11 \
$

$
K_2 :
&x^2&&+y^2&&+z^2&&=4 \
&(5)^2&&+(1)^2&&+(1)^2&&=4 \
&25&&+1&&+1&&=4 \
&27 && && &&=4 \
$

Ingen av kuleoverflatene inneholder $P_1$. 
Gidder ikkje sjekke om dei er inni. Gløymte å bruke $K_1$ sin forbedre likning.\

#v(4em)

#oppgave("(c)") Vi finn skjeringspunkt.
$
m:
cases(
  x = -2,
  y = t,
  z = 2 + 4t
)
$

Fant dette: #underline[#link("https://sitandr.github.io/typst-examples-book/book/basics/math/alignment.html")]

#pagebreak()

= Plan for øving
Finn løysingsmetode for ofte brukte problemstillingar. Døme, distanse mellom to objekt, der informasjon om objektene er variabel.
Løysinga skal vere godt eigna for _Geogebra_.
== Distanse og nærmast punkt
=== Kule vs kule
Finne distanse. Sentruma $O_1, O_2$ og radiene $r_1, r_2$.
$
D=abs(O_1-O_2)-r_1-r_2
$
Finne nærmast punkt.
$
  P_1&=D (arrow(O_1 O_2))/(abs(arrow(O_1 O_2)))\
  P_2&=D (arrow(O_2 O_1))/(abs(arrow(O_2 O_1)))
$
=== Punkt vs kule
=== Linje vs kule
=== Plan vs kule
=== Linje vs punkt
=== Plan vs punkt

#pagebreak()
== skjeringspunkt
=== Kule vs kule
Vi har kulene $K_1, K_2$. Sentruma $O_1, O_2$ og radiene $r_1, r_2$. Vi kan framstille dei som likningar eller parameterframstillingar. 
Skjæringskurven vil vere ein sirkel med radius $r_3$.
#figure(
  image("assets/ggex2.png", width: 80%),
  caption: [Geogebra illustrasjon av trekanten skapt av kulene og eit punkt på skjæringssirkelen.],
) <tegn2>
#v(1em)
Vi ønsker å finne $abs(arrow(O_1 O_3))$. La $x=abs(arrow(O_1 O_3))$. Med pytagoras får vi da
#v(1em)
$
  (r_2)^2&=x^2+(r_3)^2 \
  (r_1)^2&=(D-x)^2+(r_3)^2 \
$
Subtraherer
$
  (r_2)^2 - (r_1)^2 &=x^2 - (D-x)^2 + (r_3)^2 - (r_3)^2 \
  (r_2)^2 - (r_1)^2 &=x^2 - (D-x)^2 \
  (r_2)^2 - (r_1)^2 &=x^2 - (D^2 - 2D x + x^2) \
  (r_2)^2 - (r_1)^2 &=x^2 - D^2 + 2D x - x^2 \
  (r_2)^2 - (r_1)^2 &=2D x - D^2 \
  2D x&= (r_2)^2 - (r_1)^2 + D^2  \
  abs(arrow(O_1 O_3)) = x  &= ((r_2)^2 - (r_1)^2 + D^2) / (2D)  \
  abs(arrow(O_2 O_3)) = D-x&= ((r_1)^2 - (r_2)^2 + D^2) / (2D)  \
$
Sentrum til skjeringssirkelen blir da 
$
  O_3 &= O_1 + abs(arrow(O_1 O_3)) (arrow(O_1 O_2)) / (abs(arrow(O_1 O_2))) \
  O_3 &= O_1 + (((r_2)^2 - (r_1)^2 + D^2) / (2D)) bold(v)
  #h(2em) "der " bold(v)=(arrow(O_1 O_2)) / (abs(arrow(O_1 O_2)))\
$

Med _Geogebra_ var det best å løyse
$
  (r_2)^2&=x^2+(r_3)^2 \
  (r_1)^2&=(D-x)^2+(r_3)^2 \
$
med _CAS_. Det klarte den fint, den gir da to løysingar for både radius og distanse. Dette klarer den berre dersom den har 
nokre verdiar. Reint algebraisk, med berre ukjente, går det ikkje. Da må ein gjere utrekningane over.


=== Plan vs kule
Vi har planet $alpha$ og kulen $K_1$. Normalvektoren til planet, $bold(n)$ og punktet i planet $Q$. Sentrum $O$ og radien $R$. Vi kan framstille dei som likningar eller parameterframstillingar. 
Skjæringskurven vil vere ein sirkel med radius $r$ og sentrum $P$.

#figure(
  image("assets/ggex3.png", width: 80%),
  caption: [Planet $alpha$ og punktet $P$.],
) <tegn4>

#v(2em)
Vi kan finne distansen D, som er distansen mellom sentrum til kulen og planet.
$
D &=
(abs(a P_x + b P_y + c P_x + d)) 
/
(sqrt(a^2+b^2+c^2))
= 
(abs(bold(n) dot arrow(Q O))) 
/ 
abs(bold(n)) = abs(bold(hat(n)) dot arrow(Q O)) \

&=
(abs(bold(n) dot (O-Q))) 
/
abs(bold(n)) \

&=
(abs(bold(n) dot O - bold(n) dot Q))
/
abs(bold(n)) \
$
#v(1em)
For å forklare $d$
$
a x+b y+b z+d&=0 \
bold(n) dot (vec(x,y,z)-Q)&=0 \
bold(n) dot vec(x,y,z) - bold(n) dot Q&=0 \
bold(n) dot vec(x,y,z) + d&=0 #h(2em) "der " d=-bold(n) dot Q \
$
Altså
$
&(a x+b y+b z)&&+ (d)&=0 \
&(bold(n) dot vec(x,y,z)) &&+ (-bold(n) dot Q)&=0 \
$
Tilbake til oppgåven, vi finn $r$
$
D^2 + r^2 &= R^2 \
r^2 &= R^2 - D^2
$
Vi finn $P$
$
P &= O plus.minus D thin bold(hat(n)) \
P &= O plus.minus D thin (bold(n)) / abs(bold(n)) \
$
Her endar vi opp med to løysingar. Dette kan unngås. Dersom vi beholder forteikn til $D$, og tillater negativ distanse så kan vi finne $P$ direkte.
Vi gjer heller dette geometrisk, gjennom ei delvis utleiing av 
$ D=abs(bold(hat(n)) dot arrow(Q O)) $
Merk at 
$ arrow(P O)=(bold(hat(n)) dot arrow(Q O)) bold(hat(n)) $

#pagebreak()
== Volum og overflate

Fra boka:\
Vektorane $bold(u), bold(v) "og" bold(w)$ er ikkje parallelle, og ligg ikkje i same plan. Dei kan spenne ut 
- eit parallellepiped med volum $abs((bold(u) times bold(v)) dot bold(w))$
- eit trekanta prisme med volum $1/2 abs((bold(u) times bold(v)) dot bold(w))$
- eit firkanta pyramide med volum $1/3 abs((bold(u) times bold(v)) dot bold(w))$
- eit tetraeder med volum $1/6 abs((bold(u) times bold(v)) dot bold(w))$

=== Kule
=== Parallellpiped
Grunngivelse for formelen $(bold(u) times bold(v)) dot bold(w)$. \
La $G=abs(bold(u) times bold(v))$. Grunnflaten, areal.\
La $bold(hat(x))=(bold(u) times bold(v)) / G$. Normalvektoren til grunnflaten.\
Høyden til parallellepiped vil vere gitt med
$
h=abs(bold(hat(x)) dot bold(w)) #h(2em) bold(w) "projektert på " bold(hat(x))
$
Volumet er gitt med 
$ 
V=G h &= abs(bold(u) times bold(v)) dot abs(bold(hat(x)) dot bold(w)) \
      &= abs(abs(bold(u) times bold(v)) dot bold(hat(x)) dot bold(w)) \
      &= underline(abs((bold(u) times bold(v)) dot bold(w))) \
$
=== Liste over flere kjente

= Skalarproduktet
Vi kan bruke skalarproduktet til dekompononering.
$
bold(v) = bold(v_1)+bold(v_2)
$
Gitt ein vektor $bold(hat(w))$.
$
bold(hat(w)) dot bold(v) &= abs(bold(v)) cos(theta) \
bold(v_1) = (bold(hat(w)) dot bold(v)) bold(hat(w)) &= (abs(bold(v)) cos(theta))bold(hat(w))
$
Den andre komponenten, ortogonal til $bold(hat(w)) parallel bold(v_1)$ er da gitt ved
$
bold(v_2) = bold(v) - bold(v_1)
$

== Blanda oppgåver
== Kapitteltest
=== Oppgåve 5
$
K:cases(
  x = 1.9 dot 10^(-4)cos(3.7 dot 10^(10) t) [m],
  y = 1.9 dot 10^(-4)sin(3.7 dot 10^(10) t) [m],
  z = 1.1 dot 10^(6) t [m],
)\
t "målt i "[s]
$

#v(1em)
Danner _heliks_. $x "og" y$ danner sirkel om $z$-aksen. 
$z$ beveger seg lineært. 
Sirkelen har ei radius på $r=1.9 dot 10^(-4)[m]$. 
Ein full rotasjon tar $T=(2 pi)/(3.7 dot 10^(10))[s]$
Langs $z$-aksen har positronet ein fart på $v_z=1.1 dot 10^6$
Positronet farten 
$ 
v &= abs(d / (dif t) vec(x,y,z)) \
  &= (2 pi r) / (T) + v_z \
  &= ((2 pi) 3.7 dot 10^(10) dot 1.9 dot 10^(-4)) / (2 pi) + 1.1 dot 10^6 \
  &=  3.7 dot 10^(10) dot 1.9 dot 10^(-4) + 1.1 dot 10^6 \
  &=  (3.7 dot 1.9) dot 10^(6) + (1.1) dot 10^6 \
  &=  (3.7 dot 1.9 + 1.1) dot 10^6 \
$

