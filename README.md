# Param-Ishan Setup

The super-computer **Param-Ishan** at IIT Guwahati is a great facility for students. But it's a little outdated. The main challenge students face is the older versions of packages that do not allow the installation of state-of-the-art softwares.

Specifically, Param-Ishan has support for CUDA ver 7.5 and cuDNN ver 5.1. This limits the available versions of Tensorflow that one can install. Fortunately, we can install TF ver 1.2.1 using the python package manager Anaconda.

### Prerequisites
1. Install cuda75 and cudnn 5 as shown in [this](https://github.com/abhipec/tensorflow-param-ishan-iitg) guide. Follow **steps 1-4**
2. Now we have cuda75 and cudnn setup. Now to install the Anaconda package manager. Get the download link for the **.sh** installer file from [here](https://www.anaconda.com/download/#linux).

    ```
    wget -O Anaconda.sh <insert-anaconda.sh-link-here>
    bash Anaconda.sh
    ```
    The installer will ask for confirmation. Press ENTER to confirm. Then it will show the EULA, which you can scroll by pressing ENTER many times. It will then ask for permissions. Just keeping entering 'yes'.

3. Create a new environment in anaconda. I will make the environment named 'TF2.0'
    ```
    conda create -n TF2.0
    ```
4. Activate the environment.
    ```
    source activate TF2.0
    ```
5. Now lets see what Tensorflow versions are available in Anaconda
    ```
    conda search tensorflow-gpu
    ```
    We can see that there is a tensorflow-gpu ver 1.2.1 available that needs cuda7.5 and cudnn 5.1, exactly what we need. **YAY!**
6. Now to install.
    ```
    conda install -c conda-forge tensorflow-gpu=1.2.1=py27cuda7.5cudnn5.1_0
    ```
Let it install, it will take some time. Now we have Tensorflow ver 1.2.1 installed. For any code, you just need to activate the conda environment and run your codes :smile: