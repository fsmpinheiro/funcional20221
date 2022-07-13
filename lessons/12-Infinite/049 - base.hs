-- Não entendi pq esse exercício está se repetindo professor =/
-- No caso desse contexto, como mudar a base de uma entrada finita???



baseCh 0 base = [ ]
baseCh number base = baseCh ( div number base ) base  ++ [ toText ( mod number base ) ] 


toText index = ( ['0'..'9'] ++ ['A'..'Z'] ) !! index