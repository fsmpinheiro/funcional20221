



baseCh 0 base = [ ]
baseCh number base = baseCh ( div number base ) base  ++ [ toText ( mod number base ) ] 


toText index = ( ['0'..'9'] ++ ['A'..'Z'] ) !! index