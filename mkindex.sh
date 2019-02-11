
d='misc karlsLegoHobbitDecoloring ece1254 quantumchemistry fluidFlow ece1236 cliffordModule phy2403-quantum-field-theory phy485 financial papers puzzle ece1228-emt complex phy452 twitterTips ece1505-convex-optimization msta phy454 griffiths dragonCone GAelectrodynamics gabook phy356 coffee phy1610 phy487 tapwater vagc phy456 phy450 phy1520 classicalmechanics ece1229'
for i in $d ; do
   ../METADATA -mathe -filter "$i/" > $i/index.html
done
../METADATA -mathe > index.html

