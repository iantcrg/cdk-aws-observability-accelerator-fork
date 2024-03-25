export EXTERNAL_IP=$1
export SAMPLE_TRAFFIC_NAMESPACE=nginx-sample-traffic
sed "s/{{external_ip}}/$EXTERNAL_IP/g; s/{{namespace}}/$SAMPLE_TRAFFIC_NAMESPACE/g" ../sample-traffic.yaml | kubectl apply -f -