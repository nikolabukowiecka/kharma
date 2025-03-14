# URI Unity

if  [[ $HOST == *"unity.rc.umass.edu"* ]]; then
   echo $(hostname -f)
    NPROC=8
    #HOST_ARCH=HSW
    HOST_ARCH=SKX #uname -a
    EXTRA_FLAGS="-DPARTHENON_DISABLE_HDF5_COMPRESSION=ON" # -DPARTHENON_ENABLE_HOST_COMM_BUFFERS=ON"
    echo $ARGS
    echo "after printing out"
    module purge
    #module load hdf5/1.12.2-cgx+openmpi4.1.3 openmpi/4.1.3 gcc/11.2.0
    #module load openmpi/4.1.3 gcc/11.2.0
    module load gcc/9.4.0
    module load openmpi/4.1.6-cuda12.6 #worked before #module load openmpi/4.1.6+cuda11.8.0-ucx
    #module load nvhpc/23.9
    #worked before #module load cmake/3.21.4
    #worked before #module load cuda/11.8.0
    
   # MPI_NUM_PROCS=1
   # MPI_EXE="srun" #"mpirun" #
    
    #export MPICH_GPU_SUPPORT_ENABLED=1
    
    C_NATIVE=gcc
    CXX_NATIVE=g++
    DEVICE_ARCH=AMPERE80
    
    module list
fi
