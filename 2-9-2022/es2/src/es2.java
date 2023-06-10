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

    private static String longer(String str1,String str2){
        int str1Length= str1.length();
        int str2Length= str2.length();

        if(str1Length < str2Length ){
            return str2;
        } else{
            return str1;
        }
    }

    public static String lpsMem( String s ) {
        int n = s.length();
        String[][] mem = new String[n+1][n+1];
        // inizializza l'array a ""
            for (int i=0;i<n;i++){
                for (int j=0;j<n;j++){
                    mem[i][j]= "";
                }
            }

        return lpsRec( s, 0, mem );
    }

    private static String lpsRec( String s, int k, String mem[][] ) {
        // indice k : posizione di s nella stringa iniziale s* (argomento della prima invocazione di lps);
        // permette di distinguere fra le diverse sottostringhe di s* con la stessa lunghezza
        // e che possono essere argomento di invocazioni successive di lps.
        int n = s.length();

        if ( mem[k][k-n] == "" ) {
            if ( n < 2 ) {
                mem[k][k-n]= "" + s.charAt(0);
            } else if ( s.charAt(0) == s.charAt(n-1) ) {
                mem[k][k-n]= "" + mem[k][k-n-1] + s.charAt(0);
                lpsRec(s.substring(1), k+1,mem);
            } else {
                mem[k][n]= longer(mem[k+1][n], mem[k][n-1]);
            }}
        return mem[k][k];
    }
}
