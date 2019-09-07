FROM sonarqube:6.7

#Keeping only the java profile
RUN cd /opt/sonarqube/lib/bundled-plugins && ls | grep -v -e sonar-java-plugin -e sonar-scm-svn -e sonar-scm-git | xargs rm && ls

# Add default Java Quality Profile
ADD qualityprofile/SonarWayUpdated.xml /qualityprofile/

ADD start_with_profile.sh /opt/sonarqube/start_with_profile.sh

ENTRYPOINT ["/opt/sonarqube/start_with_profile.sh"]
