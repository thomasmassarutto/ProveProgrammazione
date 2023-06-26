// dato un aray di char trovare l occorrenza della lettera piu usata
public class es1 {
    public static char mostFrequentChar(char[] c){
        int maxfreq = 0;
        char maxchar= c[0];

        for(int i = 0;i<c.length;i++){
            char t = c[i];
            int freq= 0;

            for(int j=0;j<c.length;j++) {
                if (t == c[j]) {
                    freq++;
                }
            }
                if (freq >= maxfreq) {
                    maxfreq = freq;
                }
        }


        return maxchar;
    }


    public static int frerqChar(char[] c){
        int maxfreq = 0;
        char maxchar= c[0];

        for(int i = 0;i<c.length;i++){
            char t = c[i];
            int freq= 0;

            for(int j=0;j<c.length;j++) {
                if (t == c[j]) {
                    freq++;
                }
            }
            if (freq >= maxfreq) {
                maxfreq = freq;
            }
        }


        return maxfreq;
    }
}
