############# Define Network Parameters ##########

set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     100                        ;# number of mobilenodes
set val(rp)     AODV                    ;# routing protocol
set val(x)      2000                       ;# X dimension of topography
set val(y)      2000                       ;# Y dimension of topography
set val(stop)   50.0                       ;# time of simulation end
set val(energymodel)   EnergyModel         ;# Energy Model
set val(initialenergy) 100                 ;# Energy Value

set ns [new Simulator]

set topo    [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

set tracefile [open ECRR.tr w]
$ns trace-all $tracefile

$ns use-newtrace

set namfile [open ECRR.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)

set chan [new $val(chan)];
# *** Throughput *** #

set f0 [open ECRR_Throughput.tr w]


# *** Packet Delay Trace *** 
set f1 [open ECRR_Delay.tr w] 


# *** packet deliverey ratio *** 
 
set f2 [open ECRR_PDR.tr w] 


# *** Energy *** 
 
set f3 [open ECRR__Energy.tr w] 


$ns node-config -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -adhocRouting  AODV \
                -topoInstance  $topo \
                -ECRRTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON \
		-energyModel $val(energymodel) \
                -initialEnergy 100 \
                -rxPower 35.28e-3 \
                -txPower 31.32e-3 

set node_(0) [$ns node]
$node_(0) set X_ 253.123
$node_(0) set Y_ 175.98
$node_(0) set Z_ 0.0
$ns initial_node_pos $node_(0) 50

set node_(1) [$ns node]		
$node_(1) set X_ 487.123
$node_(1) set Y_ 283.234
$node_(1) set Z_ 0.0
$ns initial_node_pos $node_(1) 50


set node_(2) [$ns node]
$node_(2) set X_ 71.345
$node_(2) set Y_ 27.567
$node_(2) set Z_ 0.0
$ns initial_node_pos $node_(2) 50


set node_(3) [$ns node]
$node_(3) set X_ 153.123
$node_(3) set Y_ 107.51
$node_(3) set Z_ 0.0
$ns initial_node_pos $node_(3) 50


set node_(4) [$ns node]
$node_(4) set X_ 436.780
$node_(4) set Y_ 5.9864
$node_(4) set Z_ 0.0
$ns initial_node_pos $node_(4) 50


set node_(5) [$ns node]
$node_(5) set X_ -520.679
$node_(5) set Y_ 510.176
$node_(5) set Z_ 0.0
$ns initial_node_pos $node_(5) 50


set node_(6) [$ns node]
$node_(6) set X_ -619.344
$node_(6) set Y_  492.38
$node_(6) set Z_ 0.0
$ns initial_node_pos $node_(6) 50


set node_(7) [$ns node]
$node_(7) set X_ 311.679
$node_(7) set Y_ 159.192
$node_(7) set Z_ 0.0
$ns initial_node_pos $node_(7) 50


set node_(8) [$ns node]
$node_(8) set X_ -149.559
$node_(8) set Y_ 440.379
$node_(8) set Z_ 0.0
$ns initial_node_pos $node_(8) 50


set node_(9) [$ns node]
$node_(9) set X_ 588.679
$node_(9) set Y_ 281.192
$node_(9) set Z_ 0.0
$ns initial_node_pos $node_(9) 50


set node_(10) [$ns node]
$node_(10) set X_ -658.679
$node_(10) set Y_ 244.125
$node_(10) set Z_ 0.0
$ns initial_node_pos $node_(10) 50


set node_(11) [$ns node]	
$node_(11) set X_ 958.476
$node_(11) set Y_ 326.366
$node_(11) set Z_ 0.0
$ns initial_node_pos $node_(11) 50


set node_(12) [$ns node]		
$node_(12) set X_ 832.649
$node_(12) set Y_ 352.086
$node_(12) set Z_ 0.0
$ns initial_node_pos $node_(12) 50


set node_(13) [$ns node]
$node_(13) set X_ -423.272
$node_(13) set Y_ 173.672
$node_(13) set Z_ 0.0
$ns initial_node_pos $node_(13) 50

set node_(14) [$ns node]
$node_(14) set X_ -633.242
$node_(14) set Y_ 397.212
$node_(14) set Z_ 0.0
$ns initial_node_pos $node_(14) 50

set node_(15) [$ns node]
$node_(15) set X_ 183.037
$node_(15) set Y_ 51.7085
$node_(15) set Z_ 0.0
$ns initial_node_pos $node_(15) 50


set node_(16) [$ns node]
$node_(16) set X_ -493.222
$node_(16) set Y_  148.466
$node_(16) set Z_ 0.0
$ns initial_node_pos $node_(16) 50


set node_(17) [$ns node]
$node_(17) set X_ 744.5
$node_(17) set Y_ 456.534
$node_(17) set Z_ 0.0
$ns initial_node_pos $node_(17) 50


set node_(18) [$ns node]
$node_(18) set X_ 175.295
$node_(18) set Y_ 152.946
$node_(18) set Z_ 0.0
$ns initial_node_pos $node_(18) 50


set node_(19) [$ns node]
$node_(19) set X_ 1125.78
$node_(19) set Y_ 152.111
$node_(19) set Z_ 0.0
$ns initial_node_pos $node_(19) 50


set node_(20) [$ns node]
$node_(20) set X_ -458.3422
$node_(20) set Y_ 477.615
$node_(20) set Z_ 0.0
$ns initial_node_pos $node_(20) 50


set node_(21) [$ns node]
$node_(21) set X_ -557.063
$node_(21) set Y_ 272.946
$node_(21) set Z_ 0.0
$ns initial_node_pos $node_(21) 50

set node_(22) [$ns node]
$node_(22) set X_ -412.793
$node_(22) set Y_ 355.771
$node_(22) set Z_ 0.0
$ns initial_node_pos $node_(22) 50

set node_(23) [$ns node]		
$node_(23) set X_ 996.785
$node_(23) set Y_ 401.307
$node_(23) set Z_ 0.0
$ns initial_node_pos $node_(23) 50


set node_(24) [$ns node]
$node_(24) set X_ -540.394
$node_(24) set Y_ 190.24
$node_(24) set Z_ 0.0
$ns initial_node_pos $node_(24) 50

set node_(25) [$ns node]
$node_(25) set X_ -473.048
$node_(25) set Y_ 236.942
$node_(25) set Z_ 0.0
$ns initial_node_pos $node_(25) 50

set node_(26) [$ns node]
$node_(26) set X_ 143.363
$node_(26) set Y_ -10.1024
$node_(26) set Z_ 0.0
$ns initial_node_pos $node_(26) 50

set node_(27) [$ns node]
$node_(27) set X_ 707.358
$node_(27) set Y_ 95.277
$node_(27) set Z_ 0.0
$ns initial_node_pos $node_(27) 50


set node_(28) [$ns node]
$node_(28) set X_ 815.441
$node_(28) set Y_ 244.889
$node_(28) set Z_ 0.0
$ns initial_node_pos $node_(28) 50


set node_(29) [$ns node]
$node_(29) set X_ 443.823
$node_(29) set Y_ 273.148
$node_(29) set Z_ 0.0
$ns initial_node_pos $node_(29) 50


set node_(30) [$ns node]
$node_(30) set X_ 984.864
$node_(30) set Y_ 246.391
$node_(30) set Z_ 0.0
$ns initial_node_pos $node_(30) 50


set node_(31) [$ns node]
$node_(31) set X_ 1071.33
$node_(31) set Y_ 202.081
$node_(31) set Z_ 0.0
$ns initial_node_pos $node_(31) 50


set node_(32) [$ns node]
$node_(32) set X_ -476.016
$node_(32) set Y_ 300.429
$node_(32) set Z_ 0.0
$ns initial_node_pos $node_(32) 50

set node_(33) [$ns node]
$node_(33) set X_ 467.956
$node_(33) set Y_ 220.677
$node_(33) set Z_ 0.0
$ns initial_node_pos $node_(33) 50


set node_(34) [$ns node]		
$node_(34) set X_ 1066.62
$node_(34) set Y_ 371.882
$node_(34) set Z_ 0.0
$ns initial_node_pos $node_(34) 50


set node_(35) [$ns node]
$node_(35) set X_ -28.4535
$node_(35) set Y_ 217.383
$node_(35) set Z_ 0.0
$ns initial_node_pos $node_(35) 50

set node_(36) [$ns node]
$node_(36) set X_ -377.831
$node_(36) set Y_ 438.776
$node_(36) set Z_ 0.0
$ns initial_node_pos $node_(36) 50

set node_(37) [$ns node]
$node_(37) set X_ -570.453
$node_(37) set Y_ 343.496
$node_(37) set Z_ 0.0
$ns initial_node_pos $node_(37) 50

set node_(38) [$ns node]
$node_(38) set X_ -90.6454
$node_(38) set Y_ 22.184
$node_(38) set Z_ 0.0
$ns initial_node_pos $node_(38) 50

set node_(39) [$ns node]
$node_(39) set X_ -132.01
$node_(39) set Y_ 89.5145
$node_(39) set Z_ 0.0
$ns initial_node_pos $node_(39) 50

set node_(40) [$ns node]
$node_(40) set X_ 409.114
$node_(40) set Y_ 58.9966
$node_(40) set Z_ 0.0
$ns initial_node_pos $node_(40) 50


set node_(41) [$ns node]
$node_(41) set X_ 903.282
$node_(41) set Y_ 206.474
$node_(41) set Z_ 0.0
$ns initial_node_pos $node_(41) 50


set node_(42) [$ns node]
$node_(42) set X_ 1045.18
$node_(42) set Y_ 296.851
$node_(42) set Z_ 0.0
$ns initial_node_pos $node_(42) 50


set node_(43) [$ns node]
$node_(43) set X_ -303.56
$node_(43) set Y_ 332.614
$node_(43) set Z_ 0.0
$ns initial_node_pos $node_(43) 50

set node_(44) [$ns node]
$node_(44) set X_ -388.598
$node_(44) set Y_ 275.888
$node_(44) set Z_ 0.0
$ns initial_node_pos $node_(44) 50

set node_(45) [$ns node]		
$node_(45) set X_ -335.811
$node_(45) set Y_ 396.091
$node_(45) set Z_ 0.0
$ns initial_node_pos $node_(45) 50

set node_(46) [$ns node]
$node_(46) set X_ -42.0034
$node_(46) set Y_ 110.301
$node_(46) set Z_ 0.0
$ns initial_node_pos $node_(46) 50

set node_(47) [$ns node]
$node_(47) set X_ 122.586
$node_(47) set Y_ 196.139
$node_(47) set Z_ 0.0
$ns initial_node_pos $node_(47) 50


set node_(48) [$ns node]
$node_(48) set X_ 562.056
$node_(48) set Y_ -30.026
$node_(48) set Z_ 0.0
$ns initial_node_pos $node_(48) 50

set node_(49) [$ns node]
$node_(49) set X_ 144.898
$node_(49) set X_ 377.966
$node_(49) set Z_ 0.0
$ns initial_node_pos $node_(49) 50


set node_(50) [$ns node]
$node_(50) set X_ 23.1854
$node_(50) set Y_ 88.4141
$node_(50) set Z_ 0.0
$ns initial_node_pos $node_(50) 50

set node_(51) [$ns node]
$node_(51) set X_ 923.188
$node_(51) set Y_ 393.263
$node_(51) set Z_ 0.0
$ns initial_node_pos $node_(51) 50

set node_(52) [$ns node]
$node_(52) set X_ 897.619
$node_(52) set Y_ 97.4126
$node_(52) set Z_ 0.0
$ns initial_node_pos $node_(52) 50


set node_(53) [$ns node]
$node_(53) set X_ 1075.09
$node_(53) set Y_ 102.433
$node_(53) set Z_ 0.0
$ns initial_node_pos $node_(53) 50


set node_(54) [$ns node]
$node_(54) set X_ -92.0389
$node_(54) set Y_ 156.43
$node_(54) set Z_ 0.0	
$ns initial_node_pos $node_(54) 50
set node_(55) [$ns node]
$node_(55) set X_ 374.879
$node_(55) set Y_ 158.116
$node_(55) set Z_ 0.0
$ns initial_node_pos $node_(55) 50

set node_(56) [$ns node]		
$node_(56) set X_ 521.999
$node_(56) set Y_ 248.872
$node_(56) set Z_ 0.0
$ns initial_node_pos $node_(56) 50

set node_(57) [$ns node]
$node_(57) set X_ 1135.37
$node_(57) set Y_ 229.551
$node_(57) set Z_ 0.0
$ns initial_node_pos $node_(57) 50


set node_(58) [$ns node]
$node_(58) set X_ 75.7516
$node_(58) set Y_ 127.118
$node_(58) set Z_ 0.0
$ns initial_node_pos $node_(58) 50


set node_(59) [$ns node]
$node_(59) set X_ 490.693
$node_(59) set Y_ -0.562384
$node_(59) set Z_ 0.0
$ns initial_node_pos $node_(59) 50
set node_(60) [$ns node]
$node_(60) set X_ -156.617
$node_(60) set Y_  31.836
$node_(60) set Z_ 0.0
$ns initial_node_pos $node_(60) 50


set node_(61) [$ns node]
$node_(61) set X_ -163.074
$node_(61) set Y_ 151.203
$node_(61) set Z_ 0.0
$ns initial_node_pos $node_(61) 50


set node_(62) [$ns node]
$node_(62) set X_ 614.18
$node_(62) set Y_ 232.747
$node_(62) set Z_ 0.0	
$ns initial_node_pos $node_(62) 50


set node_(63) [$ns node]
$node_(63) set X_ 92.5876
$node_(63) set Y_ 389.774
$node_(63) set Z_ 0.0
$ns initial_node_pos $node_(63) 50

set node_(64) [$ns node]
$node_(64) set X_ 980.175
$node_(64) set Y_ 163.678
$node_(64) set Z_ 0.0
$ns initial_node_pos $node_(64) 50


set node_(65) [$ns node]
$node_(65) set X_ -548.587
$node_(65) set Y_ 431.371
$node_(65) set Z_ 0.0
$ns initial_node_pos $node_(65) 50
set node_(66) [$ns node]
$node_(66) set X_ -342.597
$node_(66) set Y_ 214.263
$node_(66) set Z_ 0.0
$ns initial_node_pos $node_(66) 50
set node_(67) [$ns node]		
$node_(67) set X_ -99.1801
$node_(67) set Y_ 226.474
$node_(67) set Z_ 0.0
$ns initial_node_pos $node_(67) 50


set node_(68) [$ns node]
$node_(68) set X_ 111.765
$node_(68) set Y_ 57.2589
$node_(68) set Z_ 0.0
$ns initial_node_pos $node_(68) 50


set node_(69) [$ns node]
$node_(69) set X_ 340.858
$node_(69) set Y_ 97.4717
$node_(69) set Z_ 0.0
$ns initial_node_pos $node_(69) 50


set node_(70) [$ns node]
$node_(70) set X_ 8.9889
$node_(70) set Y_ -42.5396
$node_(70) set Z_ 0.0	
$ns initial_node_pos $node_(70) 50


set node_(71) [$ns node]
$node_(71) set X_ 687.115
$node_(71) set Y_ 246.188
$node_(71) set Z_ 0.0
$ns initial_node_pos $node_(71) 50


set node_(72) [$ns node]
$node_(72) set X_ 571.813
$node_(72) set Y_ 22.2001
$node_(72) set Z_ 0.0
$ns initial_node_pos $node_(72) 50


set node_(73) [$ns node]
$node_(73) set X_ 593.001
$node_(73) set Y_ 98.5258
$node_(73) set Z_ 0.0
$ns initial_node_pos $node_(73) 50


set node_(74) [$ns node]
$node_(74) set X_ 1119.84
$node_(74) set Y_ 307.489
$node_(74) set Z_ 0.0
$ns initial_node_pos $node_(74) 50


set node_(75) [$ns node]
$node_(75) set X_ 527.307
$node_(75) set Y_ 91.7837
$node_(75) set Z_ 0.0
$ns initial_node_pos $node_(75) 50


set node_(76) [$ns node]
$node_(76) set X_ -661.597
$node_(76) set Y_ 316.866
$node_(76) set Z_ 0.0
$ns initial_node_pos $node_(76) 50

set node_(77) [$ns node]
$node_(77) set X_ -486.941
$node_(77) set Y_ 372.14
$node_(77) set Z_ 0.0
$ns initial_node_pos $node_(77) 50

set node_(78) [$ns node]		
$node_(78) set X_ 598.725
$node_(78) set Y_ 155.18
$node_(78) set Z_ 0.0
$ns initial_node_pos $node_(78) 50


set node_(79) [$ns node]
$node_(79) set X_ 1039.76
$node_(79) set Y_ 143.75
$node_(79) set Z_ 0.0
$ns initial_node_pos $node_(79) 50


set node_(80) [$ns node]
$node_(80) set X_ 350.42
$node_(80) set Y_ 33.5898
$node_(80) set Z_ 0.0
$ns initial_node_pos $node_(80) 50


set node_(81) [$ns node]
$node_(81) set X_ 354.658
$node_(81) set Y_ 233.512
$node_(81) set Z_ 0.0
$ns initial_node_pos $node_(81) 50

set node_(82) [$ns node]
$node_(82) set X_ 107.55
$node_(82) set Y_ 255.56
$node_(82) set Z_ 0.0
$ns initial_node_pos $node_(82) 50


set node_(83) [$ns node]
$node_(83) set X_ 649.451
$node_(83) set Y_ 47.21
$node_(83) set Z_ 0.0
$ns initial_node_pos $node_(83) 50


set node_(84) [$ns node]
$node_(84) set X_ 7.95663
$node_(84) set Y_ 166.596
$node_(84) set Z_ 0.0
$ns initial_node_pos $node_(84) 50


set node_(85) [$ns node]
$node_(85) set X_ 891.506
$node_(85) set Y_ 296.987
$node_(85) set Z_ 0.0
$ns initial_node_pos $node_(85) 50


set node_(86) [$ns node]
$node_(86) set X_ 540.087
$node_(86) set Y_ 153.072
$node_(86) set Z_ 0.0
$ns initial_node_pos $node_(86) 50


set node_(87) [$ns node]
$node_(87) set X_ 663.833
$node_(87) set Y_ 150.869
$node_(87) set Z_ 0.0
$ns initial_node_pos $node_(87) 50


set node_(88) [$ns node]
$node_(88) set X_ -309.302
$node_(88) set Y_ 268.453
$node_(88) set Z_ 0.0
$ns initial_node_pos $node_(88) 50
set node_(89) [$ns node]		
$node_(89) set X_ 457.834
$node_(89) set Y_ 100.933
$node_(89) set Z_ 0.0
$ns initial_node_pos $node_(89) 50


set node_(90) [$ns node]
$node_(90) set X_ 48.9493
$node_(90) set Y_ 227.753
$node_(90) set Z_ 0.0
$ns initial_node_pos $node_(90) 50


set node_(91) [$ns node]
$node_(91) set X_ -18.69
$node_(91) set Y_ 27.4572
$node_(91) set Z_ 0.0
$ns initial_node_pos $node_(91) 50
set node_(92) [$ns node]
$node_(92) set X_ 785.577
$node_(92) set Y_ 134.35
$node_(92) set Z_ 0.0
$ns initial_node_pos $node_(92) 50


set node_(93) [$ns node]
$node_(93) set X_ 975.417
$node_(93) set Y_ 88.364
$node_(93) set Z_ 0.0
$ns initial_node_pos $node_(93) 50


set node_(94) [$ns node]
$node_(94) set X_ 569.211
$node_(94) set Y_ 212.123
$node_(94) set Z_ 0.0
$ns initial_node_pos $node_(94) 50


set node_(95) [$ns node]
$node_(95) set X_ 86.3812
$node_(95) set Y_ -49.5702
$node_(95) set Z_ 0.0
$ns initial_node_pos $node_(95) 50
set node_(96) [$ns node]
$node_(96) set X_ 430.545
$node_(96) set Y_ 167.938
$node_(96) set Z_ 0.0
$ns initial_node_pos $node_(96) 50

set node_(97) [$ns node]
$node_(97) set X_ 834.253
$node_(97) set Y_ 162.473
$node_(97) set Z_ 0.0
$ns initial_node_pos $node_(97) 50

set node_(98) [$ns node]
$node_(98) set X_ 462.68
$node_(98) set Y_ 399.725
$node_(98) set Z_ 0.0
$ns initial_node_pos $node_(98) 50

set node_(99) [$ns node]
$node_(99) set X_ 226.67
$node_(99) set Y_ 551.92
$node_(99) set Z_ 0.0
$ns initial_node_pos $node_(99) 50


set ml [list 8 9 3 2]
for {set i 0} {$i<$val(nn)} {incr i} {
	$node_($i) color blue
	$ns at 0.0 "$node_($i) color blue"
}



set ml [list 8 9 3 2]
for {set i 0} {$i<$val(nn)} {incr i} {
	$node_($i) color blue
	$ns at 0.0 "$node_($i) color blue"
}

for {set i 0} {$i < $val(nn)} {incr i} {

set energy($i) [expr rand()*100]
#puts " energy of node $i $energy($i)"

}

for {set i 0} {$i < $val(nn) } { incr i } {

set CE($i) [expr $val(initialenergy) - $energy($i)]
#puts $en "$i $CE($i)"
}

set energyConsumption 0

for {set i 0} {$i < $val(nn) } { incr i } {

set energyConsumption [expr $CE($i) + $energyConsumption]
}

$ns at 0.0 "$ns trace-annotate \"ECRR Simulation Started.....\""


$ns color 0 blue
$ns color 1 red
$ns color 2 brown
$ns color 3 yellow
$ns color 4 hotpink
$ns color 5 black

$ns at 1.0 "$node_(8) label CH_1"
$ns at 1.0 "$node_(17) label CH_2"
$ns at 1.0 "$node_(63) label CH_3"
$ns at 1.0 "$node_(98) label CH_4"
$ns at 1.0 "$node_(99) label Base_Station"

#$ns at 1.0 "$node_(1) label Cluster_Head"
#$ns at 1.0 "$node_(12) label Cluster_Head"


#$ns at 1.0 "$node_(45) color yellow"
#$node_(45) color "3"
#$ns at 1.0 "$node_(90) color yellow"
#$node_(90) color "3"
#$ns at 1.0 "$node_(1) color yellow"
#$node_(1) color "3"
#$ns at 1.0 "$node_(12) color yellow"
#$node_(12) color "3"


$ns at 1.0 "$node_(8) color brown"
$node_(8) color "2"

$ns at 1.0 "$node_(63) color brown"
$node_(63) color "2"

$ns at 1.0 "$node_(17) color brown"
$node_(17) color "2"

$ns at 1.0 "$node_(98) color brown"
$node_(98) color "2"

$node_(99) color skyblue
$ns at 0.5 "$node_(99) color skyblue"
$ns at 0.5 "$node_(99) add-mark . blue hexagon"


#$ns at 4.3  "$ns trace-annotate \"Source Node Initiate Communiction\""
$ns at 4.3  "$ns trace-annotate \"   \""

puts "   "   
puts "   " 


# First Cluster Traffic
set udp1 [new Agent/UDP]
$ns attach-agent $node_(21) $udp1
set sink1 [new Agent/LossMonitor]
$ns attach-agent $node_(8) $sink1
$ns connect $udp1 $sink1
$udp1 set fid_ 1
 
#CBR Packet Generation
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
$cbr1 set type_ CBR
$cbr1 set packet_size_ 512
$cbr1 set interval_ 0.3
$ns at 5.0 "$cbr1 start"
$ns at 49.0 "$cbr1 start"

# Second Cluster Traffic

set tcp2 [new Agent/TCP/Newreno]
set sink2 [new Agent/TCPSink]
$ns attach-agent $node_(91) $tcp2
$ns attach-agent $node_(63) $sink2
$ns connect $tcp2 $sink2
$tcp2 set fid_ 2

set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp2
$ftp2 set packet_size_ 512
$ftp2 set interval_ 0.2

$ns at 5.3 "$ftp2 start"
$ns at 49.0 "$ftp2 stop"


# Third Cluster Traffic
set udp3 [new Agent/UDP]
$ns attach-agent $node_(72) $udp3
set sink3 [new Agent/LossMonitor]
$ns attach-agent $node_(98) $sink3
$ns connect $udp3 $sink3
$udp3 set fid_ 1
 
#CBR Packet Generation
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp3
$cbr3 set type_ CBR
$cbr3 set packet_size_ 512
$cbr3 set interval_ 0.2
$ns at 6.0 "$cbr3 start"
$ns at 46.0 "$cbr3 start"


# BS
set udp4 [new Agent/UDP]
$ns attach-agent $node_(63) $udp4
set sink4 [new Agent/LossMonitor]
$ns attach-agent $node_(99) $sink4
$ns connect $udp4 $sink4
$udp4 set fid_ 1
 
#CBR Packet Generation
set cbr4 [new Application/Traffic/CBR]
$cbr4 attach-agent $udp4
$cbr4 set type_ CBR
$cbr4 set packet_size_ 512
$cbr4 set interval_ 0.1
$ns at 6.0 "$cbr4 start"
$ns at 46.0 "$cbr4 start"


set holdtime 0 
set holdseq 0 
set holdrate 0

# ECRR_Throughput, ECRR_PDR, ECRR_Delay 

proc record {} { 

global sink1 sink3 f0 f1 f2 en holdtime holdseq holdrate
 
set ns [Simulator instance] 

set time 1.0;#Set Time  Interval 0.5 Sec 

set bw0 [$sink1 set bytes_]

set bw1 [$sink1 set lastPktTime_]

set bw2 [$sink1 set npkts_] 



set now [$ns now] 

set clock 1.7 
set type 2.5 
set maxdist 10


#ECRR_Throughput

puts $f0 "$now [expr (($bw0+$holdrate)*8)/(2*$time)]"


# Record Packet ECRR_Delay in File 
if { $bw2 > $holdseq } { 
puts $f1 "$now [expr ($bw1 - $holdtime)/($bw2 - $holdseq)/$type]" 

} else { 
puts $f1 "$now [expr ($bw2 - $holdseq)]" 

} 

# ECRR_PDR

	puts $f2 "$now [expr $bw2/4]"
	
	
 	$sink1 set bytes_ 0
	
 
$ns at [expr $now+$time] "record" ;# Schedule Record after $time interval sec 
} 
#record the events

$ns at 0.0 "record" 


#for {set i 0} {$i < $val(nn)} {incr i} {

#$ns at 1.50 "$node_($i)  label id($i)"

#}


proc finish {} {

     global ns tracefile namfile f0 f1 f2
     $ns flush-trace
   
    close $tracefile
    close $namfile
     
    close $f0  
    close $f1
    close $f2
	 

exec xgraph ECRR_PDR.tr -geometry 800x400 -t "Packet Delivary Ratio" -x "Simulation_Time" -y "PDR" -bg white & 
exec xgraph ECRR_Delay.tr -geometry 800x400 -t "Delay" -x "Simulation_Time" -y "Delay(ms)" -bg white &
exec xgraph ECRR_Throughput.tr -geometry 800x400 -t "Throughput" -x "Simulation_Time" -y "Bytes (pkts)" -bg white &  
exec xgraph ECRR_Energy.tr -geometry 800x400 -t "Energy" -x "Simulation_Time" -y "Energy(J)" -bg white &
exec nam ECRR.nam & 
exit 0 

}


for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$node_($i) reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run

