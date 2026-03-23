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

/*
#figure(
  image("assets/ggex3.png", width: 80%),
  caption: [Planet $alpha$ og punktet $P$.],
) <tegn4>
*/

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

Vi tar for oss skalarproduktet:

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
