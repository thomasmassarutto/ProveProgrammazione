import java.util.Vector;
import java.util.Stack;
public class Permutations {
    public static Vector<String> perm( String u ) { // u non vuota
        Vector<String> p = new Vector<String>();
        permRec( u, 0, p );
        return p;
    }
    public static void permRec( String u, int k, Vector<String> p ) {
        int n = u.length();
        if ( k == n-1 ) {
            p.add( u );
        } else {
            permRec( u, k+1, p );
            for ( int i=k+1; i<n; i=i+1 ) {
                String v = u.substring( 0, k ) + u.substring( i, i+1 ) + u.substring( k+1, i )
                        + u.substring( k, k+1 ) + u.substring( i+1, n );
                permRec( v, k+1, p );
            }}
    }

    public static Vector<String> permIter( String u ) { // u non vuota
        Vector<String> p = new Vector<String>();
        int n = u.length(), k;
        Stack<String> s = new Stack<String>();
        Stack<Integer> t = new Stack<Integer>();
        s.push( u ); t.push( 0 );
        do {

            if ( k == n-1 ) {
                p.add( u );
            } else {




            }
        } while ( !s.empty() );
        return p;
    }

}
