#set page(margin: 1.75in)
#set page(margin: 2.75in)
#set par(leading: 1.00em, spacing: 1.00em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show heading: set block(above: 1.4em, below: 1em)
#set heading(numbering: "1.1 ")
#set math.vec(delim: "[")
#set math.mat(delim: "[")
#set par(spacing: 1.0em, first-line-indent: 0em)
#show math.equation: set block(above:2em, below:2em)
#set page(height: auto)
#set page(fill: rgb("#0A000A"))
#set text(fill: white)

#let oppgave(input) = {
  strong(input) 
  h(0.5cm)
}

#figure(
  image("assets/desmos-graph1.svg", width: 100%),
  caption: [$e^(i t - t)$],
) <tegn4>

= Øving til fysikk fagdag

== Eksamensoppgaver

#link("https://www.youtube.com/watch?v=fd0Ff15Nk-E&list=RDfd0Ff15Nk-E&start_radio=1") \
a)
Ei kule blir sendt med horisontal fart v utover kanten av eit bord. 
Kula treffer golvet i ein horisontal avstand x frå bordet. 
Høgda y av bordet er gitt ved formelen

$ y = (g x^2) / (2 v^2) $

Den relative uvissa for avstanden $x$ er $1 %$. 
Den relative uvissa for farten $v$ er $2 %$.

Kva er den relative uvissa for høgda y av bordet?

A. 3 %
B. 5 %
C. 6 %
D. 9 %


b)
Ein kloss blir dregen med konstant fart av ei kraft F. 
Friksjonstalet for friksjonen mellom klossen og underlaget er μ.

Kva er det rette uttrykket for storleiken på friksjonskrafta?

A. μmg
B. μF cos α
C. μF sin α
D. μ(mg - F sin α)


== Snorer

$
arrow(S_1) &= S_1 vec(
  cos(30 deg),
  sin(30 deg)
) \
arrow(S_2) &= S_2 vec(
  cos(60 deg),
  sin(60 deg)
) \
$

Vi vet at 
$
alpha eq.delta 30 deg &and beta eq.delta 60 deg \
$
og de horisontale kreftene må kanselleres
$
S_(1x)&=S_(2x) \
S_1 cos alpha&=S_2 cos beta \
S_1&=S_2 (cos beta) / (cos alpha) \
S_1&<S_2 \
$
De vertikale kreftene må også kanselleres
$
S_(3)&=S_(1y) + S_(2y) \
S_(3)&=S_1 sin alpha + S_2 sin beta \
$
Substitusjon
$
S_(3)&=S_2 (cos beta) / (cos alpha) sin alpha + S_2 sin beta \
S_(3)&=S_2 (cos beta dot tan alpha + sin beta) \
S_(3)&=S_2 k #h(2em) "der " k < 1\
S_(3)&<S_2 \
$
Konklusjon, $S_2$ er den største kraften.

#import "@preview/cetz:0.4.2"
#cetz.canvas(background: rgb("#FFFFFF"),
            padding: 2em,
{
import cetz.draw: *
// Draw a circle
circle((0, 0), radius:3)
// Draw a line
line((1,-1), (2,1))
let (a, b, c) = ((0, 1), (2, 2), (2, 0))
// Draw an arc through 3 points
arc-through(a, b, c)
// Show the points
set-style(content: (frame: "circle", padding: 1pt, fill: red))

content(a, [A]); 
content(b, [B]); 
content(c, [C]);
})

(*g*) Eit prosjektil blir skote ut frå bakkenivå med ein fart $v$ og ein vinkel $theta$ i forhold til
horisontalplanet. Sjå vekk ifrå luftmotstand.
Kva er den største høgda prosjektilet får?\
Med å bruke bevaring av energi
$
E_"bakke" &= E_"toppunkt" \
1/2 m v_y^2 &= m g h \
h &= (1/2 m v_y^2) / (m g) \
h &= (m v_y^2) / (2 m g) \
h &= (m (v sin theta)^2) / (2 m g) \
h &= (v^2 sin^2 theta) / (2 g) \
$

=== Kva er fotoelektrisk effekt?
Foton riv laus elektron i metall, og skapar spenning. Lausrivningsarbeidet er mengda arbeid nødvendig for ei slik lausrivning. Meir energi vil auka spenning. Intensitet vil ikkje forandre spenning. Dette er eit bevis på fotonets partikkelnatur.

=== Vindmølle med generator
$
Phi &= N arrow(A) dot arrow(B) \
&=N B A cos theta \
$
Faraday sin lov
$
cal(E)&=Phi ' \
&=- (dif theta) / (dif t) N B A sin theta \
&=- omega N B A sin omega t \
$
Kan også vere (basert på rotasjonsretning)
$
cal(E) &= omega N B A sin omega t
$

La spolen rotere. Vinkelen mellom $arrow(A) "og" arrow(B) "," theta$ blir større. Positiv straumretning går med klokka om $arrow(A)$. \
3. Kva er maksimalverdien for den elektromotoriske spenninga i spolen? \
$omega$ er vinkelfarten. $omega = ("omdreiingar" dot 2 pi) / ("tid")=(5 dot 2 pi thick ["radian"]) / (1 thick [s])$.

$
cal(E) &= omega N B A sin omega t \

cal(E) &= 5 dot 2 pi thick s^(-1)
dot 200 
dot 0.10 thick T 
dot 0.0050 thick m^2 
dot sin (5 dot 2 pi dot t) quad &&[V]\

cal(E)_"maks" &= 5 dot 2 pi thick s^(-1)
dot 200 
dot 0.10 thick T 
dot 0.0050 thick m^2 
dot (1) quad &&[V]\

cal(E)_"maks" &= 5 dot 2 pi thick s^(-1)
dot 200 
dot 0.10 thick T 
dot 0.0050 thick m^2 quad &&[V]\
$
(c) 1.

$
s_y = -10/2 t^2 + 4.0 t + h
$
Vi veit at for $t=1.0 thick s$ så er $s_y = 0$
$
0 &= 
-(10 thick [m s^(-2)])/2 (1.0 thick [s])^2 
+ 4.0 thick [m s^(-1)] (1.0 thick [s]) 
+ h \

-h &= 
(10 thick [m s^(-2)])/2 (1.0 thick [s])^2 
- 4.0 thick [m s^(-1)] (1.0 thick [s]) \

h &= 
(5.0 thick [m]
- 4.0 thick [m])\

h &= (1.0) thick [m]\
$
Lengda
$
s_x &= 8.0 thick [m/s] t thick [s] \
&= 8.0 thick [m/s] (1 thick [s]) \
&= 8.0 thick [m] \
$

=== Finn potensiell energi i gravitasjonsfelt
Arbeidet er gitt ved
$
W = integral F(s) dif s
$
La $F = k (M m)/(s^2)$, der $k$ er gravitasjonskonstanten og $M$ og $m$ er massene. $s$ er distanse fra sentrum av det radielle gravitasjonsfeltet.
$
W &= integral k (M m)/(s^2) dif s \
W &= integral k M m s^(-2) dif s \
W &= k M m (-1)s^(-1) + C \
W &= -(k M m)/s + C \
$
For potensiell energi mellom to punkt har vi da
$
E_p &= (k M m)/s_2-(k M m)/s_1 \
$

Vanlige formel lar det første punktet, distansen, gå mot uendeleg.

$
E_(p 1) &= W lr(|, size: #170%)_(oo)^(s_2) \
&= lim_(s_1 -> oo) -(k M m)/s_2+(k M m)/s_1 \
&= -(k M m)/s_2 + lim_(s_1 -> oo) (k M m)/s_1 \
&= -(k M m)/s_2 + 0 \
&= -(k M m)/s_2 \
$

=== Oppgåve 3
Ein asteroide har tilnærma ingen fart og er svært langt frå jorda. På grunn av gravitasjonskreftene vil
han falle mot oss. På det næraste er han 5000 km over jordoverflata. Etter passeringa vil han
forsvinne ut i verdsrommet og aldri komme tilbake. Sjå vekk ifrå alle andre massar enn jorda og
asteroiden.\
*Kva blir den største farten til asteroiden?*\
#v(2em)
- Han må ha nok kinetisk energi til å forsvinne uendeleg langt vekk.
$
E_k
- integral^s_(oo) k (M m)/(-s^2) dif s
 &= 0 \

E_k + E_p&= 0\
$

Kva arbeid blir gjort på eit objekt som flytter seg ut i eit grav.felt? Arbeidet må vere negativt dersom objektets avstand frå sentrum av grav.feltet aukar.

$
integral_1^2 arrow(G)(s) dif arrow(s) < 0
$

Dette arbeidet er lik energien nødvendig for å forflytte objektet fra $1$ til $2$. Siden $arrow(G)$ alltid vil vere motsett retta forflytningen $dif s$ ($pi$ radianer mellom dem),

$
integral_1^2 -abs(arrow(G)(s)) dif s < 0
$
Vi kjenner magnituden til krafta: $G$
$
G = k (M m) / r^2
$
Den nødvendige energien for å få planeten til å kunne unnslippe feltet er da lik
$
E_k &= integral_s^(oo) -abs(arrow(G)(s)) dif s \
E_k &= - integral^s_(oo) -abs(arrow(G)(s)) dif s \
E_k &= integral^s_(oo) abs(arrow(G)(s)) dif s \
E_k &= integral^s_(oo) abs(arrow(G)(s)) dif s \
E_k &= E_p \
$


#v(30em)
