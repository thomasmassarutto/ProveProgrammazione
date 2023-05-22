//tecnica top-down di memoization applicata a Manhattan3d
public class Manhattan3Dmem {

    public static long manhattan3Dmem( int i, int j, int k ) { // i, j, k ≥ 0
        Counter v = new Counter();
        long[][][] h = new long[i+1] [j+1] [k+1];

        // inizializzazione a unknown di array
        for (int a= 0; a<=i ;a++){
            for (int b= 0; b<=j ;b++){
                for (int c= 0; c<=k ;c++){
                    h[a][b][c]= UNKNOWN;
                }
            }
        }


        mem( i, j, k, v, h );
        return v.count();
    }
    private static void mem( int i, int j, int k, Counter v, long[][][] h ) {
        if ( h[i][j][k] == UNKNOWN ) {

            if ( (i == 0) && (j == 0) && (k == 0) ) {
                v.incr();
                h[i][j][k] = v.count();
            } else {
                long n = v.count();

                if ( i > 0 ) { mem(i-1, j, k, v, h ); }
                if ( j > 0 ) { mem(i, j-1, k, v, h); }
                if ( k > 0 ) { mem(i, j, k-1, v, h); }

                h[i][j][k] =  v.count() - n;// non so perche si aggiunge -n
            }
        } else {
            v.add( h[i][j][k] );
        }
    }
    private static final long UNKNOWN = -1;

}
