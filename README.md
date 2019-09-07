The project is designed to run mutliple sonarqube instances, having only Java quality profile, so that each instance caters to one feature branch of a code repository. 

After building the image, start up the container using the usual commands.

Once up, run the sonar analysis on the project, with the ````sonar.host.url```` pointing to the docker container.

And once the analysis is complete, the following RESTs can be used to fetch the results:

Issues: 
````
http://<sonar-url>:9000/api/issues/search?projectKeys=<project-key>&severities=BLOCKER&statuses=OPEN&pageSize=400&authors=<author-name>
````

Coverage:
````
http://<sonar-url>:9000/api/measures/component?component=<project-key>&metricKeys=coverage
````
