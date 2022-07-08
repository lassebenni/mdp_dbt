# MDP DBT 

This repository is part of the MDP project, which contains several components in a modern data-analytics platform. Here the DBT part of the platform is stored.

## Getting started

1. Create a python virtualenv, e.g. with `python3 -m .venv`, activate it, and install the packages in `requirements.txt`.
2. Run `dbt debug` to check if you can connect to BigQuery. It will try to use the config in `profiles.yaml` and connect to GCP using `oauth` and your GCP credentials.
3. Try to run models with `dbt build` and see if it works!
