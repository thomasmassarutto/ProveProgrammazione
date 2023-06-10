public class chatgpt {

    public static String lpsDP(String s) {
        int n = s.length();
        String[][] mem = new String[n][n];

        // Inizializzazione dei casi base (sottosequenze palindromiche di lunghezza 1)
        for (int i = 0; i < n; i++) {
            mem[i][i] = String.valueOf(s.charAt(i));
        }

        // Calcolo delle sottosequenze palindromiche più lunghe
        for (int len = 2; len <= n; len++) {
            for (int i = 0; i <= n - len; i++) {
                int j = i + len - 1;

                if (s.charAt(i) == s.charAt(j)) {
                    mem[i][j] = s.charAt(i) + mem[i + 1][j - 1] + s.charAt(j);
                } else {
                    mem[i][j] = longer(mem[i + 1][j], mem[i][j - 1]);
                }
            }
        }

        return mem[0][n - 1];
    }

    private static String longer(String s1, String s2) {
        return (s1.length() > s2.length()) ? s1 : s2;
    }


}
