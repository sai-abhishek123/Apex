public class FermatExplorer {
    public String checkFermat(Integer a, Integer b, Integer c, Integer n) {
        if(Math.pow(a,n)+Math.pow(b,n)==Math.pow(c,n) && n>2) return 'Holy smokes, Fermat was wrong!';
        else return 'No, that doesn’t work.';
    }
}