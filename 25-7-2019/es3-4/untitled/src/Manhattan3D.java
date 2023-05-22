public class Manhattan3D {

    public static long manhattan3D( int i, int j, int k ) { // i, j, k ≥ 0
        Counter v = new Counter();
        manhattan3DRec( i, j, k, v );
        return v.count();
    }
    private static void manhattan3DRec( int i, int j, int k, Counter v ) {
        if ( (i == 0) && (j == 0) && (k == 0) ) {
            v.incr();
        } else {
            if ( i > 0 ) { manhattan3DRec( i-1, j, k, v ); }
            if ( j > 0 ) { manhattan3DRec( i, j-1, k, v ); }
            if ( k > 0 ) { manhattan3DRec( i, j, k-1, v ); }
        }
    }


}
