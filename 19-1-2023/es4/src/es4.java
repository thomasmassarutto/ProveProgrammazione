public class es4 {

    public static int[] matrixVectorProduct(int[][] matrix, int[] vector){

        int cols= matrix.length;// colonne matrice
        int rows= matrix[1].length;

        //System.out.println(rows);
        //System.out.println(cols);

        int[] res = new int[rows];
        for(int i= 0;i<rows; i++){
            res[i]=0;
        }

        for(int i=0;i<rows;i++){
            for(int j=0;j<cols;j++){
                res[i]= res[i] + vector[j] * matrix[j][i];
            }
        }

        return res ;
    }
}
