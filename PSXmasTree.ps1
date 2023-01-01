function XmasTree {

    param (
        $H=15, 
        $O=50, 
        $C = @("blue", "green", "white", "red", "yellow", "magenta"),
        $X = (Get-Random -Min 0 -Max 5),
        $TH = 2
    )
   
    for ( $I=1; $I -le $H; $I++) {
        $S = " " * ($O - $I) + "*" * ($I * 2) 
        $X = $N % $C.Length
        Write-Host $S -ForegroundColor $C[$X]
        $N++
    }

    $TW =[math]::floor($I / 4)
    if ( ($TW % 2) -ne 0 ) { $TW-- }

    while ( $TH -gt 0 ) {
        $S = " " * ( $O - ( $TW / 2 ) ) + "#" * $TW
        Write-Host $S -ForegroundColor Yellow
        $TH--
    }

}

XmasTree
