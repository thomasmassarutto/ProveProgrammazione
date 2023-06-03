import static java.lang.Math.*;

public class es2 {
   public static int lscsMem(String str1, String str2){
       int m= str1.length();
       int n= str2.length();

       int[][] mem= new int[m][n];

       for(int i=0; i<m; i++){
           for(int j=0; j<n; j++){

               if (i== 0 || j== 0){// casi base
                   mem[i][j]= i+j +1;
               }else if (str1.charAt(i) == str2.charAt(j) ){
                   mem[i][j]= mem[i-1][j];
               }else {
                   mem[i][j]= Math.min(mem[i-1][j],mem[i][j-1]) +1;
               }

           }
       }


       return mem[m-1][n-1];
   }

}
