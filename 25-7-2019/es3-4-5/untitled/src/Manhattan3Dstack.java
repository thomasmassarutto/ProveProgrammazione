//completa la definizione del metodo statico manhattan3D,
// riportato nel riquadro sottostante, che trasforma la struttura
// ricorsiva di manhattan3DRec in una struttura iterativa
// basata su uno stack

import java.util.Stack;

public class Manhattan3Dstack {

    public static long manhattan3D( int i, int j, int k ) { // i, j, k ≥ 0
        Counter v = new Counter();
        Stack<int[]> s = new Stack<int[]>();
        // Inizializza lo stack con la posizione di partenza (i, j, k)
        // Ogni elemento dello stack
        s.push(new int[]{i, j, k});
        do {
            int[] f = s.pop();
            if ((f[0] == 0) && (f[1] == 0) && (f[2] == 0)) {
                // Se posizione è l'origine, incrementa il contatore dei percorsi validi
                v.incr();
            } else {
                if ( f[0]>0 ){
                    // Genera nuovo percorso decrementando la dimensione i di uno.
                    s.push(new int[]{f[0] -1, f[1], f[2]});
                }
                if ( f[1]>0 ){
                    s.push(new int[]{f[0] , f[1] -1, f[2]});
                }
                if ( f[2]>0 ){
                    s.push(new int[]{f[0], f[1], f[2]-1});
                }
            }
        } while (!s.empty());
        return v.count();
    }
}