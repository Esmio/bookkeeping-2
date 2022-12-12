dir=ruby-test

time=$(date +'%Y%m%d-%H%M%S')
dist=tmp/mangosteen-$time.tar.gz
current_dir=$(dirname $0)
deploy_dir=~/documents/$dir/mangosteen_deploy

yes | rm tmp/mangosteen-*.tar.gz; 
yes | rm $deploy_dir/mangosteen-*.tar.gz; 



tar --exclude="tmp/cache/*" -czv -f $dist *
mkdir -p $deploy_dir
cp $current_dir/../config/host.Dockerfile $deploy_dir/Dockerfile
cp $current_dir/setup_host.sh $deploy_dir/
mv $dist $deploy_dir
echo $time > $deploy_dir/version
echo 'DONE!'