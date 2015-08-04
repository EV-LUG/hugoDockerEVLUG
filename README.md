Hugo Docker Demo - EVLUG
========================
(Built and tested on Ubuntu 14.4 AWS AIM)  

Dependancies:  
	- git  
	- go (language)  
	- docker  
	- hugo  

	
Git:  
(for more detailed or other OS instructions please see: [Git Docs](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git))  
	- install git
		`$ sudo apt-get update`
		`$ sudo apt-get install git`  

Go:  
(for more detailed or other OS instructions please see: [Go Docs](http://golang.org/doc/install))  
 	- Add `/usr/local/go/bin` to PATH environment variable  
		`$ sudo export PATH=$PATH:/usr/local/go/bin`  
	- Install Go (language)  
		`$ sudo apt-get install golang`  
		
Docker:  
(for more detailed or other OS instructions please see: [Docker Docs](http://docs.docker.com/installation/))  
	- Install Docker  
		(Check if wget installed)  
		`$ which wget` <- If installed skip next two commands  
		(Installing wget)  
		`sudo apt-get update`  
		`sudo apt-get install wget`  
		`wget -q0- https://get.docker.com/ | sh`
