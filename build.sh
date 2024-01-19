#!/usr/bin/env bash
# exit on error
# set -o errexit

# pip install -r requirements.txt

# python manage.py collectstatic --no-input
# python manage.py migrate

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 6 -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
source ~/miniconda3/bin/activate
conda install -c conda-forge libta-lib
pip install TA-Lib
pip install -r requirements.txt
pip install gunicorn==20.1.0
export PATH=“$PATH:/opt/render/miniconda3/lib/python3.10/site-packages”
