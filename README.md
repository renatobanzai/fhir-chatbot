## FHIR ChatBot

Using InterSystems Iris for Health FHIR to create a chatbot assistant to query health information in a natural language way.

# Predicting Tags from IRIS Developer Community Posts
![picture](https://raw.githubusercontent.com/renatobanzai/fhir-chatbot/master/img/fhir_chatbot.gif)


### Demo
I have deployed the trained model as a demo here:
[http://fhir-chatbot.eastus.cloudapp.azure.com:32783/csp/user/fhirUI/share/FHIRChatBot.html](http://fhir-chatbot.eastus.cloudapp.azure.com:32783/csp/user/fhirUI/share/FHIRChatBot.html)

## Using the demo

You can list all patients and see the blood pressure history of a identified patient. 
you can type something like 
list all patients
or
get all patients

Once you have an patient id, you can list the blood pressure history of this one.

** Please, delete all cache content from your webbrowser to get the latest version of FHIR ChatBot. 

## Getting started

### Prerequisites
* git
* docker and docker-compose **adjust docker settings to up memory and cpu the AI demands more capacity**
* access to a terminal in your environment

### Installing
Clone my repository typing these commands:

```
git clone https://github.com/renatobanzai/fhir-chatbot.git
```

### Building and running the docker-compose
**adjust docker settings to up memory and cpu the AI demands more capacity**
- 6GB Memory (or more if you can)
- 2CPU (or more if you can)

### Need to set more memory to docker engine
![picture](https://raw.githubusercontent.com/renatobanzai/iris-ml-suite/master/img/docker_memory.png)

### Running in linux and MacOS
```
docker-compose build

docker-compose up -d
```

### Estimated time to up containers
1st time running will depend of your internet link to download the images and dependencies. 
If it last more than 15 minutes probably something goes wrong feel free to communicate here.
After the 1st time running the next ones will perform better and take less then 5 minutes.


### If is everything ok
After a while you can open your browser and go to the address:

- FHIR ChatBot: [http://localhost:32783/csp/user/fhirUI/share/FHIRChatBot.html](http://localhost:32783/csp/user/fhirUI/share/FHIRChatBot.html)
