public class Main {
    public static void main(String[] args) {
        double[] test1=  new double[]{ 0.5, 0.2, 0.8, 0.5, 0.2, 0.8, 0.5 };
        double[] test2=  new double[]{ 0.5, 0.2, 0.8, 0.5, 0.2, 0.5, 0.8 };
        double[] test3=  new double[]{ 0.5, 0.2, 0.8, 0.5, 0.2, 0.8, 0.5 };

        System.out.println(es1.isPeriodic(test3, 8));
    }
}