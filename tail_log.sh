backend_pid=$(psql db_test -c 'select pg_backend_pid();' | grep '\d\+' | head -n 1 | awk '{$1=$1; print}')
tail -f /Users/wang/local/postgres-data/log/postgresql.log | grep "\[${backend_pid}\]"