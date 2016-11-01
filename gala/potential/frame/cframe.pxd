cdef extern from "frame/src/cframe.h":
    ctypedef struct CFrame:
        pass

cdef class CFrameWrapper:
    cdef CFrame cframe

    cpdef energy(self, double[:,::1] w, double t=?)
    cpdef gradient(self, double[:,::1] w, double t=?)
    cpdef hessian(self, double[:,::1] w, double t=?)

