public class es1 {
    // questa è una soluzione superottimizzata
    // non è nemmeno ricorsiva bro, ma come mi è venuta in mente?
    // boh tipo stavo pensando e via poh
    // devo implementare un aversione piu aesy secondo te? nel senso, sta roba all'esame non la scrivi...
    // pffff, in caso dopo
    //
    public static boolean isPeriodic(double[] array, int periodo){
        int length= array.length;

        boolean res= true;
        for (int i=0 ;i<periodo; i++){
            int j=i;
            while (j< length){

                if (array[i] != array[j] ){
                    return false;
                }else {
                    j= j+periodo;
                }
            }
        }
        return res;
    }
}
