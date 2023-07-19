#Install
cd / && mkdir -p airflow && cd airflow &&
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.6.3/docker-compose.yaml' &&
echo -e "AIRFLOW_UID=$(id -u)" > .env &&
ls -ls &&
mkdir -p /DockerData/Airflow/ && cd /DockerData/Airflow/ &&
mkdir dags logs config plugins source &&
export AIRFLOW_PROJ_DIR=/DockerData/Airflow/ &&
echo $AIRFLOW_PROJ_DIR && 
cd /airflow &&
docker compose up airflow-init -d && docker compose up -d && sleep 3m && docker-compose ps &&
echo Airflow installation completed.