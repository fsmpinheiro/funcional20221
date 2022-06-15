


myFilter _ [ ] = [ ]
myFilter fun xs = if  fun x
                    then x : myFilter fun ( tail xs )
                    else myFilter fun ( tail xs )
        where 
            x = head xs