# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
module load gcc/4.8.2
module load python/cdac/3.5.2
module load slurm 


#Change proxy settings
export ALL_PROXY=http://username:pwd@202.141.80.22:3128
export HTTP_PROXY=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export FTP_PROXY=$ALL_PROXY
export RSYNC_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export https_proxy=$ALL_PROXY
export ftp_proxy=$ALL_PROXY
export rsync_proxy=$ALL_PROXY
export LC_COLLATE=C
export LC_ALL=C



#CUDA settings

export CUDA_ROOT=~/cuda75
export CUDA_HOME=~/cuda75
export PATH=${CUDA_HOME}/bin:$PATH
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/cm/shared/apps/glibc_2.14:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/cm/local/apps/cuda-driver/libs/352.79/lib64:$LD_LIBRARY_PATH


