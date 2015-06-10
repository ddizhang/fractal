NextStep <-
function( H ){
    H0 = H/2
    
    H_LU = H0 + matrix( c( rep( 0, nrow( H0 ) ) , rep( 1/2, nrow( H0 ))),  ncol = 2 )
    
    H_RU = H0 %*% matrix( c( -1, 0, 0, 1), nrow = 2, ncol = 2 ) + matrix( c( rep( 1, nrow( H0 )), rep( 1/2, nrow(H0 ) ) ), ncol = 2 )
    
    H_LD =( H0 - matrix( c( rep( 1/4, nrow( H0 ) ) , rep( 1/4, nrow( H0 )) ),  ncol = 2 )) %*% matrix( c( 0, 1, -1, 0), nrow = 2, ncol = 2 ) + matrix( c( rep( 1/4, nrow( H0 ) ) , rep( 1/4, nrow( H0 ))),  ncol = 2 )
    
    H_RD =( H0 %*% matrix( c( -1, 0, 0, 1), nrow = 2, ncol = 2 ) + matrix( c( rep( 1/4, nrow( H0 ) ) , rep( -1/4, nrow( H0 ))),  ncol = 2 )) %*% matrix( c( 0, -1, 1, 0), nrow = 2, ncol = 2 ) + matrix( c( rep( 3/4, nrow( H0 ) ) , rep( 1/4, nrow( H0 ))),  ncol = 2 )
    
    H = rbind( H_LD[ rev(1:nrow( H_LD)), ], H_LU, H_RU[ rev( 1:nrow( H_RU )), ], H_RD )
    
    return( H )
  }
