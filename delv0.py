import numpy as np

def dgemm(A, B):
    A = np.array(A, dtype=np.float64)
    B = np.array(B, dtype=np.float64)
    
    m, k = A.shape
    k1, n = B.shape
    
    if k != k1:
        raise ValueError("The number of columns in A must match the number of rows in B")
    
    C = np.zeros((m, n), dtype=np.float64)
    
    for i in range(m):
        for j in range(n):
            sum = 0.0
            for r in range(k):
                sum += A[i, r] * B[r, j]
            C[i, j] = sum
    
    return C

A = [[1.0, 2.0], [3.0, 4.0]]
B = [[2.0, 0.0], [1.0, 2.0]]
C = [[1.0, 2.0, 3.0],
     [4.0, 5.0, 6.0]]
d = [[2.0, 1.0],
     [0.0, 2.0],
     [1.0, 3.0]]

print("Resulting Matrix C:")
print(C)

result_C = dgemm(A, B)
print("Result of multiplying matrices A and B:")
print(result_C)

print("Resulting Matrix d:")
print(d)

result_d = dgemm(C, d)
print("Result of multiplying matrices C and d:")
print(result_d)

