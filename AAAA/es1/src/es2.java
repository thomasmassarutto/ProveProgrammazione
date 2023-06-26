// ricorsione lcs trovare
public class es2 {

    private static final int UNKNOWN=-1;

    public static int llcs(int[] u, int [] v ){
        int[][] mem= new int[u.length +1 ][u.length+1];

        for (int i=0; i<=u.length; i++){
            for (int j = 0; j<=v.length; j++){
                mem[i][j]= UNKNOWN;
            }
        }
        return llcsRec(u,v,0,0, mem);
    }

    public static int llcsRec(int[] u, int[] v, int i, int j, int[][] mem ){

        if (mem[i][j]== UNKNOWN){
            if (i>= u.length || j>= u.length){
                mem[i][j]=0;
            }else if (u[i] == v[j]) {
                mem[i][j]= 1+ llcsRec(u, v, i+1, j+1, mem);
            }else {
                mem[i][j]= Math.max(llcsRec(u, v, i+1, j, mem),
                                    llcsRec(u, v, i, j+1, mem));
            }
        }
        return mem[i][j];
    }


}
