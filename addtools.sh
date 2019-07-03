apt-get update -y
apt-get install vim -y
apt-get install dnsutils net-tools -y

{
echo "start background discovery in 10 secs"
sleep 10 
for i in `host ${AEROSPIKE_ENV}|grep 'has address'|awk '{print $4}'`; do asinfo -v "tip:host=${i};port=3002"; done
echo "Finished Cluster Discovery"
}&
echo "starting asd"
asd --config-file /run/secrets/aerospike.conf --foreground 
