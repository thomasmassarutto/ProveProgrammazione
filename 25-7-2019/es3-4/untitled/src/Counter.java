public class Counter {
    // long count: rappresenta il conteggio
    private long count;

    //costruttore pubblico inizializza counter a zero
    public Counter(){

      count= 0;
    }

    // incrementa di uno
    public void incr(){
        this.count++;
    }

    // aggiunge un certo numero al contatore
    public void add(long n){
        this.count= this.count + n;
    }

    // azzera il contatore
    public void reset(){
        this.count= 0;
    }

    // ritorna il numero contatore
    public long count(){
        return this.count;
    }

    // procedeure override:
    public String toString(){
        return "" + this.count ;
    }
}
