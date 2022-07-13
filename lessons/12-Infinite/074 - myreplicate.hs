


myreplicate  y z = if ( y > 0 )
                then z : myreplicate ( y - 1 ) z
                else [ ]