


indexes v xs = [ b | ( a, b) <-  auxIndex xs , a == v ] 

auxIndex xs = zip xs [0.. length xs ] 