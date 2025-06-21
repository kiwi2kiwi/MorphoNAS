#!/bin/bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

python src/experimentA.py --generate-configs --run-experiments --seed=54210 --experiment-seed=65420
python src/regenerate_displays.py experiments/_ExpA_graph_properties/results/*/