import java.util.*;

public class NQueens {
    private int[] x; // Array to store positions of queens
    private int n;  

    public NQueens(int n) {
        this.n = n;
        this.x = new int[n + 1]; 
    }

    public void solve() {
        nQueens(1);
    }

    private void nQueens(int k) {
        for (int i = 1; i <= n; i++) { // i is column
            if (place(k, i)) {
                x[k] = i;
                if (k == n) {
                    printSolution();
                } else {
                    nQueens(k + 1);
                }
            }
        }
    }

    private boolean place(int k, int i) {
        for (int j = 1; j < k; j++) { // j is row
            if (x[j] == i || Math.abs(x[j] - i) == Math.abs(j - k)) {
                return false;
            }
        }
        return true;
    }

    private void printSolution() {
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                if (x[i] == j) {
                    System.out.print("Q ");
                } else {
                    System.out.print(". ");
                }
            }
            System.out.println();
        }
        System.out.println();
    }

    public static void main(String[] args) {
        int n = 4; // Example for 8 queens problem
        NQueens queens = new NQueens(n);
        queens.solve();
    }
}

