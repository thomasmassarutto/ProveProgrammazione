public class test1 {

    public static void iter(){

        int n =5;
        for ( int k=0; k<=n; k=k+1 ) {
            for ( int i=0; i<=n-k; i=i+1 ) {
                int ctr= i+k-1;
                System.out.print("(" + k + "," + i + ","+ ctr + ")");
                }
            System.out.println("");
            }
    }


}

