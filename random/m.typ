#set page(margin: 1.75in)
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

/*
#figure(
  image("assets/ggex3.png", width: 80%),
  caption: [Planet $alpha$ og punktet $P$.],
) <tegn4>
*/

= Opphøying med matrise

== Hva betyr $x^(mat(a,b;c,d))$?
Det må oppfylle opphøyingsreglene

$
  x^a dot x^b &= x^(a+b) \
  (x^a) ^(b) &= x^(a b) \
  forall a exists b : x^a dot x^b &= 1 \
  forall a exists b : (x^a) ^(b) &= x \
  (dif)/(dif x)(e ^ (x)) &= e ^ x \
$

Vi bytter ut med $2 times 2$ matrise, $mat(a,b;c,d) "og" mat(alpha, beta; gamma, delta)$.

$
  x^(mat(a,b;c,d)) dot x^(mat(alpha, beta; gamma, delta)) &= x^(mat(a,b;c,d)+mat(alpha, beta; gamma, delta)) \
  (x^(mat(a,b;c,d))) ^(mat(alpha, beta; gamma, delta)) &= x^(mat(a,b;c,d) mat(alpha, beta; gamma, delta)) \
  forall mat(a,b;c,d) exists mat(alpha, beta; gamma, delta) : x^(mat(a,b;c,d)) dot x^(mat(alpha, beta; gamma, delta)) &= 1 \
  forall mat(a,b;c,d) exists mat(alpha, beta; gamma, delta) : (x^(mat(a,b;c,d))) ^(mat(alpha, beta; gamma, delta)) &= x \
  (dif)/(dif mat(a,b;c,d))(e ^ (mat(a,b;c,d))) &= e ^ (mat(a,b;c,d)) \
$

Opphøyinga må altså returnere eit skalár. Vi ser på en og en identitet. Første
$
  x^(mat(a,b;c,d)) dot x^(mat(alpha, beta; gamma, delta)) &= x^(mat(a+alpha,b+beta;c+gamma,d+delta)) \
$
Andre
$
  (x^(mat(a,b;c,d))) ^(mat(alpha, beta; gamma, delta)) &= x^(mat(a,b;c,d) mat(alpha, beta; gamma, delta)) \
$
Her har vi matrise-multiplikasjon
$
mat(a,b;c,d) mat(alpha, beta; gamma, delta) = 
mat(a alpha + b gamma, a beta + b delta;c alpha + d gamma, c beta + d delta)
$
Da får vi
$
  (x^(mat(a,b;c,d))) ^(mat(alpha, beta; gamma, delta)) &= x^(mat(a alpha + b gamma, a beta + b delta;c alpha + d gamma, c beta + d delta)) \
$


= Oppgave fra YT

#link("https://www.youtube.com/watch?v=XRwRgN_eeIc")

#figure(
  image("assets/oppgave_YT_1.png", width: 125%),
  caption: [Planet $alpha$ og punktet $P$.],
) <tegn4>

Gitt
$
sin(alpha + beta) = 1/3
$

$
cos(alpha - beta) = 2/3
$

$
-pi/4 < beta < 0 < alpha < pi/4
$

$
W := (
  (sin alpha)/(cos beta)
+ (cos beta)/(sin alpha)
+ (cos alpha)/(sin beta)
+ (sin beta)/(cos alpha)
)^2
$

$
S = { n | n <= W}
$

Finn $max(S)$

Først kan vi bearbeide $sin(alpha + beta) = 1/3$

$
sin(alpha + beta) &= 1/3 \
sin alpha cos beta + sin beta cos alpha &= 1/3 \
sin alpha cos beta &= 1/3 - sin beta cos alpha \
(sin alpha) / (cos beta) &= (1/3 - sin beta cos alpha) / (cos^2 beta) \
(sin alpha) / (cos alpha) &= (1/3 - sin beta cos alpha) / (cos beta cos alpha) \
(sin alpha) / (cos alpha) &= 1/(3 cos alpha cos beta) - tan beta \
tan alpha &= 1/(3 cos alpha cos beta) - tan beta \
$


$
W = (
  (sin alpha)/(cos beta)
+ ((sin alpha)/(cos beta))^(-1)
+ (cos alpha)/(sin beta)
+ ((cos alpha)/(sin beta))^(-1)
)^2
$

La $bold(v) = vec(cos alpha, sin alpha), bold(u) = vec(cos beta, sin beta)$


$
W^2 &= 
  (v_y)/(u_x)
+ ((v_y)/(u_x))^(-1)
+ (v_x)/(u_y)
+ ((v_x)/(u_y))^(-1)
\
W^2 &= 
  (v_y)/(u_x)
+ (v_x)/(u_y)
+ ((v_y)/(u_x))^(-1)
+ ((v_x)/(u_y))^(-1)
\
W^2 &= 
bold(v) dot vec(1/u_y, 1/u_x)
+
bold(u) dot vec(1/v_y, 1/v_x)
\
$

La $bold(v)^s = vec(1/v_y, 1/v_x), bold(u)^s = vec(1/u_y, 1/u_x)$.

$
W^2 &= 
bold(v) dot bold(u)^s
+
bold(u) dot bold(v)^s
\
W^2 &= 
(1)|bold(u)^s| cos theta_1
+
(1)|bold(v)^s| cos theta_2
\
W^2 &= 
|bold(u)^s| cos theta_1
+
|bold(v)^s| cos theta_2
\
$

For å undersøke nye vektorer
$
|bold(v)^s|^2 &= 1/v_y^2 + 1/v_x^2 \
|bold(v)^s|^2 &= (v_x^2 + v_y^2)/(v_y^2 thick v_x^2) \
|bold(v)^s|^2 &= 1/(v_y^2 thick v_x^2) thick (v_x^2 + v_y^2) \
|bold(v)^s|^2 &= 1/(v_y^2 thick v_x^2) thick |bold(v)|^2 \
|bold(v)^s| &= 1/(|v_y thick v_x|) thick |bold(v)| \
|bold(v)^s| &= 1/(|v_y thick v_x|) thick (1) \
|bold(v)^s| &= 1/(|v_y thick v_x|) \
$
Dermed også 
$
|bold(u)^s| &= 1/(|u_y thick u_x|) \
$
Vi veit at $|v_y v_x|$ er arealet av rektangelet dannet av origo i einingsirkelen og punktet på sirkelen. 
Blant anna viser dette at $|bold(v)^s| < |bold(v)| and |bold(u)^s| < |bold(u)|$
Vi kan også finne vinkelen mellom $x$-aksen og $bold(v)^s, bold(u)^s$

$
bold(v)^s &= vec(1/v_y, 1/v_x) \
bold(v)^s &= vec(1/(sin alpha), 1/(cos alpha)) \
$

Drar det vi har funne tilbake til $W^2$

$
W^2 &= 
1/(|u_x u_y|) cos theta_1
+
1/(|v_x v_y|) cos theta_2
\
$


#v(30em)
