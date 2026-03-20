#set page(margin: 1.75in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show heading: set block(above: 1.4em, below: 1em)
#set heading(numbering: "1.1 ")
#set math.vec(delim: "[")
#set math.mat(delim: "[")

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

a) Finn sentrum og radius i dei to kuleflatene.

b) Undersøk kvar punktet $(5, 1, 1)$ ligg i høve til kuleflatene.

c) Finn eventuelle skjeringspunkt mellom kuleflatene og linja $m$ gitt ved

$
m:
cases(
  x = -2,
  y = t,
  z = 2 + 4t
)
$

d) Finn sentrum og radius i skjeringssirklane mellom $x y$-planet og $K_1$ og $K_2$.

#pagebreak()

== Blanda oppgåver
