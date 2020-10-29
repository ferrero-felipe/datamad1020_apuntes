import numpy as np

def valid_matrix(A):
    if A.ndim != 2:
        return False
    if 0 in A.shape:
        return False
    return True
    
def weird_mul(A, B):
    if not (valid_matrix(A) and valid_matrix(B)):
        return None
    res = np.concatenate([np.concatenate([el*B for el in row],axis=-1) for row in A])
    return res