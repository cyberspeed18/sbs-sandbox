#Install
cd / && mkdir -p airflow && cd airflow &&
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.6.3/docker-compose.yaml' &&
echo -e "AIRFLOW_UID=$(id -u)" > .env &&
ls -ls &&
export AIRFLOW_PROJ_DIR=C:/DockerData/Airflow/ &&
echo $AIRFLOW_PROJ_DIR &&
docker compose up airflow-init -d && docker compose up -d && sleep 3m && docker-compose ps &&
echo Airflow installation completed.