public class Main {
    public static void main(String[] args) {
        int i=2;
        int j=1;
        int k=1;
        System.out.println("Input: " + i + "," + j + "," + k);
        System.out.println("Ricorsione: ");
        System.out.println(Manhattan3D.manhattan3D(i,j,k));
        System.out.println("Memorization Top Down: ");
        System.out.println(Manhattan3Dmem.manhattan3Dmem(i,j,k));
        System.out.println("Stack: ");
        System.out.println(Manhattan3Dstack.manhattan3D(i,j,k));
    }
}