class nQueens:
    def __init__ (self, n):
        self.n = n
        self.x = [0] * (n+1)

    def solve(self):
        self.queens(1)

    def queens(self, k):
        for i in range(1, self.n + 1):
            if self.place(k, i):
                self.x[k] = i
                if k == self.n:
                    self.print_solution()
                else:
                    self.queens(k + 1)

    def place(self, k, i):
        for j in range(1, k):
            if self.x[j] == i or abs(self.x[j] - i) == abs(j-k):
                return False
        return True

    def print_solution(self):
        for i in range(1, self.n + 1):
            row = ['.'] * self.n
            row[self.x[i] - 1] = 'Q'
            print(' '.join(row))
        print()

if __name__ == "__main__":
    n = int(input("enter 'n' for dimension of chess board: "))
    queens = nQueens(n)
    queens.solve()
