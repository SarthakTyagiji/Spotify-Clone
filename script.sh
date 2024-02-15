#/bin/bash
code_clone(){
    git clone 
}
install_requirement(){
    sudo apt-get update 
    sudo apt install docker.io
    sudo apt install nginx -y
}
restart_required(){
    sudo systemctl enable docker
    sudo systemctl enable nginx
    sudo systemctl restart docker
}
Deploy_code(){
    docker build -t spotify .
    docker run -d -p 8000:80 spotify
}
code_clone
if ! code_clone;then
     cd spotify
install_requirement
restart_required
Deploy_code