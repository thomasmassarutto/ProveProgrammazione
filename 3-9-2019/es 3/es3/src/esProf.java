public class esProf {
    /*Applica la tecnica bottom-up di programmazione dinamica per realizzare una versione più efficiente del metodo statico
    q riportato qui di seguito:*/
    public static long q( int i, int j, int k ) { // i, j, k >= 0
        long x = ( i < 2 ) ? i : q( i-2, j, k );
        long y = ( j < 2 ) ? j : q( i, j-2, k );
        long z = ( k < 2 ) ? k : q( i, j, k-2 );
        long m = x + y + z;
        return ( m == 0 ) ? 1 : m;
    }

    public static long myq(int i, int j, int k) {
        long x, y, z;

        if (i < 2) {
            x = i;
        } else {
            x = myq(i - 2, j, k);
        }

        if (j < 2) {
            y = j;
        } else {
            y = myq(i, j - 2, k);
        }

        if (k < 2) {
            z = k;
        } else {
            z = myq(i, j, k - 2);
        }

        long m = x + y + z;

        if (m == 0) {
            return 1;
        } else {
            return m;
        }
    }


}
