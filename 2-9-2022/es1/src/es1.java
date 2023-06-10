public class es1 {
    public static boolean diag(int[][] matrix){

        boolean res= true;
        int dimension= matrix.length;

        for (int i=0;i<dimension; i++){
            for (int j=0;j<dimension; j++){
                if (j==i){
                    if (matrix[i][j] != 0){
                        return false;
                    }
                }
                if (j== dimension -1 -i){
                    if (matrix[i][j] != 0){
                        return false;
                    }
                }


            }
        }

        return res;
    }
}
