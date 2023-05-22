public class Main {
    public static void main(String[] args) {
        int i=1;
        int j=0;
        int k=1;
        System.out.println("Input: " + i + "," + j + "," + k);
        System.out.println("Giusto: ");
        System.out.println(Manhattan3D.manhattan3D(i,j,k));
        System.out.println("res: ");
        System.out.println(Manhattan3Dmem.manhattan3Dmem(i,j,k));
    }
}