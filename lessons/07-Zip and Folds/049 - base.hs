


baseChange 0 base = [ ]
baseChange number base = baseChange ( div number base ) base  ++ [ toText ( mod number base ) ] 


toText index = ( ['0'..'9'] ++ ['A'..'Z'] ) !! index