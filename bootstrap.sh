ln -s ~/configs/,vimrc ~/.vimrc
ls -s ~/comfigs/.bashrc ~/.bashrc
sudo yum update
sudo yum install git
git config --global user.name "Himanshu Jindal"
git config --global user.email "himanshujindal@gmail.com"
git clone https://github.com/himanshujindal/configs.git
cd configs
git branch --set-upstream-to=origin/master master
git fetch --all
git reset --hard origin/master
