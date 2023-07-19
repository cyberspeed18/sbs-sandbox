cd /airflow && docker compose down --volumes --rmi all && cd .. &&
rm -rf /airflow
echo Airflow uninstall completed.