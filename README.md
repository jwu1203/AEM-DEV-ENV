WINDOWS INSTALLATION

1. install Docker Desktop
	This installation will have both Docker Engine and Docker Compose install

2. under CMD commad line, run the following commands to ensure both the docker and docker compose installed successfully 
	- docker -v
	- docker-compose -v
	
3. Run and configure Docker Desktop

	go to Docker Desktop -> settings -> Shared Drives, and select and check to share C drive
	

4. free up the port 80
   By the default, the windows IIS is running and listening port 80. In order to complete Docker Dev env setup, the port 80 has to be freed up. 
   - go to Windows Features in Control pannel 
   - locate and deselect the check box next to Internet Information Services
   - click 'Ok'
   - restart windows
   
5. convert all the following files to be unix-friently
   - author/quickstart.sh
   - publish/quickstart.sh
   - start.sh
   - Dockerfile
   - docker-compose.sh
   How to convert?
   open the above files with Note++
   - go to Edit-> EOL Conversion 
   - select Unix(LF)
   - save the changes