# cltl-hack-parent

Parent repository for a dummy application to hack around in.

## Get it running

### Prerequisites

#### Python

Use Python 3.8:

    > brew install openssl readline sqlite3 xz zlib pyenv
    > eval (pyenv init -)


Switch to Python 3.8.3 in the terminal you will be using:

    > pyenv install 3.8.8
    > pyenv local 3.8.8
    > python --version
    
#### make

Not strictly necessary, but update `make` (OS X doesn't use GNU utils because of the GPL license)

    > brew install make --with-default-names
    > make --version

After this the `make` version should be at least 4.3.

#### Docker

Install Docker Desktop:

    > brew install --cask docker

#### Kubernetes

Docker Desktop comes with a built in Kubernetes cluster, go to the settings and enable it!

On Linux install minikube (see [here](https://minikube.sigs.k8s.io/docs/start/)) and start it:
    
    > minikube start

Check if the cluster is running:

    > kubectl cluster-info

#### Helm

Install helm (see [here](https://helm.sh/docs/intro/install/)):

    > brew install helm
    > helm version
    
    
### Checkout

Checkout the code:

    > git clone --recurse-submodules -j8 https://github.com/numblr/cltl-hack-parent.git

and run it:

    > make clean
    > make build
    > make install
    > make run
    
Now you should see containers starting up in Docker Desktop, and you can see things running in the cluster with
    
    > make -C cltl-hack kube-status
    
Open the [chat](localhost/chat/static/chat.html) in the browser (you may need to wait a bit until all components are up). The chat window will mirror your input. 

If you are done,

    > make stop
