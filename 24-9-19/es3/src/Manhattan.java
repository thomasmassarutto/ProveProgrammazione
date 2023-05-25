public class Manhattan {
    public static int commonStretches(String str1, String str2){
     int count = 0;
     int length= str1.length();

        for (int i = 0;i<length; i++){
            // stringhe binarie della stessa lunghezza
            if (counter(str1.substring(0, i)) == counter(str2.substring(0, i))
                    &&
                str1.charAt(i) == str2.charAt(i) ){
                count ++;
            }
        }

        return count;
    }

    public static int counter (String str){
        int length= str.length();
        int counter= 0;

        for (int i = 0; i< length ; i++){
            if (str.charAt(i) == '1'){
                counter++;
            }
        }
        return counter;
    }

}
// e' giusto? boh.
// funziona? si
