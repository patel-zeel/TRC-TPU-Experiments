# Refresh the database
sudo apt update

# Setup miniconda
if [ ! -d "$HOME/miniconda" ]; then
    echo "Installing miniconda"
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
    bash /tmp/miniconda.sh -b -u -p $HOME/miniconda
    ~/miniconda/bin/conda init bash
fi

# Restart the shell and activate the conda environment
echo "Restart the shell and activate the conda environment"
exec $SHELL