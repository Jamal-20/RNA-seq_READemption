#add channels
conda config --add channels conda-forge
conda config --add channels bioconda

# creaste Environment
conda create -n reademption python=3.9.21 -у
conda activate reademption

# install tools
conda install -c bioconda pysam=0.22.1 -y
conda install -c bioconda segemehl=0.3.4 -y
conda install -c conda-forge r-base=4.3.3 -y
conda install -c r r-gplots=3.2.0 -y
conda install -c bioconda bioconductor-deseq2=1.42.0 -y
conda install -c till_sauerwein reademption=2.0.4 -y

# Check installation
reademption --help

#error reslove
conda deactivate
conda env remove -n reademption -y

# Conda packages list
conda list
conda list >> packages_list.txt
