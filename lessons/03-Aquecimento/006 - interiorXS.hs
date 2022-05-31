


-- interior xs =  reverse ( drop 1 ( reverse ( drop 1 xs ) ) )
interior xs = drop 1 ( take ( length xs - 1 ) xs )