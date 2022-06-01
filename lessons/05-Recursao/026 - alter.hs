


alter 0 = [ ]
alter n = alter (n - 1) ++ [ n, -n]

alter1 0 = [0]
alter1 n = n : ( -n ) : alter1 ( n- 1 )

alter2 n = if n > 0
                then n : ( - n ) : alter2 ( n - 1)
                else [ ]

alter3 0 = [ ]
alter3 n = (-n) : n  : alter3 (n-1)