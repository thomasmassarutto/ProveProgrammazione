public class es2 {

    public static String lps( String s ) { // longest palindromic subsequence
        int n = s.length();
        if ( n < 2 ) { // stringa vuota o di un solo carattere: palindrome
            return s;
        } else if ( s.charAt(0) == s.charAt(n-1) ) { // caratteri estremi uguali: fanno parte del risultato
            return s.charAt(0) + lps( s.substring(1,n-1) ) + s.charAt(n-1);
        } else { // caratteri estremi diversi: almeno uno va scartato
            return longer( lps(s.substring(0,n-1)), lps(s.substring(1,n)) );
        }
    }

    private static String longer(String s1, String s2){
        int s1length= s1.length();
        int s2length= s2.length();

        if(s1length < s2length){
            return s2;
        }else{
            return s1;
        }
    }

    public static String lpsDP( String s ) {
        int n = s.length();
        String[]mem = new String[n +1];

        for ( int k=0; k<=n; k=k+1 ) {
            for ( int i=0; i<=n-k; i=i+1 ) {
                if ( k < 2 ) {
                mem[k]= s.substring(i, k);

                } else if ( s.charAt(i) == s.charAt(i+k-1) ) {
                    mem[k]= s.charAt(i) + mem[k-1];
                } else {
                    mem[k]= longer( mem[k-1], mem[k-2] );
                }
            }}
        return mem[n];
    }


}
