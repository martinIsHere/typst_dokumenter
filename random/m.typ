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

= Opphøying med matrise

== Hva betyr $x^(mat(a,b;c,d))$?
Det må oppfylle opphøyingsreglene
#v(2em)
$
  x^a dot x^b &= x^(a+b) \
  (x^a) ^(b) &= x^(a b) \
  forall a exists b : x^a dot x^b &= 1 \
  forall a exists b : (x^a) ^(b) &= x \
  (dif)/(dif x)(e ^ (x)) &= e ^ x \
$
#v(2em)
Vi bytter ut med $2 times 2$ matrise, $mat(a,b;c,d) "og" mat(alpha, beta; gamma, delta)$.
#v(2em)
$
  x^(mat(a,b;c,d)) dot x^(mat(alpha, beta; gamma, delta)) &= x^((mat(a,b;c,d))+(mat(alpha, beta; gamma, delta))) \
  (x^(mat(a,b;c,d))) ^(mat(alpha, beta; gamma, delta)) &= x^(mat(a,b;c,d) mat(alpha, beta; gamma, delta)) \
  forall mat(a,b;c,d) exists mat(alpha, beta; gamma, delta) : x^(mat(a,b;c,d)) dot x^(mat(alpha, beta; gamma, delta)) &= 1 \
  forall mat(a,b;c,d) exists mat(alpha, beta; gamma, delta) : (x^(mat(a,b;c,d))) ^(mat(alpha, beta; gamma, delta)) &= x \
  (dif)/(dif mat(a,b;c,d))(e ^ (mat(a,b;c,d))) &= e ^ (mat(a,b;c,d)) \
$
#v(2em)
Vi ser på en og en identitet. Første
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
