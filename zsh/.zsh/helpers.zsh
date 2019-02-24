
vps(){
	if [ ! $1 ]; then
	    echo "Please provide server name";
	    return 1;
	fi
	gcloud compute --project "winged-vigil-187217" ssh --zone "us-east1-b" "$1"
	return 0;
}