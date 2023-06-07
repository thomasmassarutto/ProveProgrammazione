public class Main {
    public static void main(String[] args) {

        int[] vector= {4,4};
        int[][] matrix={
                {1, 2, 3},
                {4, 5, 6},
        };

        int[] resvector= es4.matrixVectorProduct(matrix, vector);

        for (int i = 0; i<resvector.length; i++){
            System.out.println(resvector[i]);
        }


    }
}