public class BottomUp {
    public static long myQ(int i, int j , int k){
        long[][][] mem= new long [i+1][j+1][k+1];

        for (int a= 0; a <= i; a++ ){
            for (int b= 0; b <= j; b++){
                for (int c= 0;c <= k; c++){
// il problema è l'assegnazione dei casi base...
                    if (a < 2 || b < 2 || c < 2 ) {
                        if (a  == 0 || b  == 0 || c == 0 ){
                            mem[a][b][c] = 1;
                        }else{
                            mem[a][b][c] = a + b + c;
                        }
                    }else {
                        mem[a][b][c]= mem[a -2][b][c] + mem[a][b -2][c] + mem[a][b][c -2];
                    }


                }//
            }//
        }//
        return mem[i][j][k];
    }


    public static long myQ2(int i, int j , int k){
        long[][][] mem= new long [i+1][j+1][k+1];

        for (int a= 0; a <= i; a++ ){
            for (int b= 0; b <= j; b++){
                for (int c= 0;c <= k; c++) {
                    if (a < 2 || b < 2|| c<2){
                        if (a== 0 && b== 0 && c==0){
                            mem[a][b][c]=1;
                        }else {
                            mem[a][b][c]= a+b+c;
                        }

                    } else {
                     mem[a][b][c]= mem[a-2][b][c] + mem[a][b-2][c] +mem[a][b][c-2];
                    }

                }//
            }//
        }//
        return mem[i][j][k];
    }

    public static long myQ3(int i, int j , int k){
        long[][][] mem= new long [i+1][j+1][k+1];

        for (int a= 0; a <= i; a++ ){
            for (int b= 0; b <= j; b++){
                for (int c= 0;c <= k; c++) {
                   if (a>=2 && b>=2 && c>=2){
                       mem[a][b][c]= mem[a-2][b][c] + mem[a][b-2][c] +mem[a][b][c-2];
                   }else{
                        if (a== 0 && b== 0 && c==0 ){
                            mem[a][b][c]=1;
                        } else if (a<=1&& b<=1&& c<=1){
                            mem[a][b][c]= a+b+c;
                        }
                   }

                }//
            }//
        }//
        return mem[i][j][k];
    }

}
