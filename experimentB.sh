#!/bin/bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

python src/experimentB.py --run-experiments --experiment-seed=65420 --num-runs=100
python src/regenerate_displays.py experiments/_ExpB_RNN_controller/results/*/
python src/experimentB_analysis.py experiments/_ExpB_RNN_controller K01_cartpole
python src/experimentB_analysis.py experiments/_ExpB_RNN_controller K02_cartpole_min