# UnrealEngine-AutomationTestReportServer-Docker
Docker image for Automation test server

[Automation Report Test Server Documentation](https://dev.epicgames.com/documentation/en-us/unreal-engine/setting-up-an-automation-test-report-server)

# Deploy Automation Server

* Install `docker` and `docker-compose`
* Create your `docker-compose.yml` you have an exemple here [docker-compose.yml](docker-compose.yml)
* Run your server with `docker-compose up` or `docker-compose up -d` to run as a deamon
* Connect to `Automation Report Test server` with the URL : `http://localhost:8080/site`

## Building Image

```bash
docker build . -t <image tag> --build-arg="UNREALVERSION=<Unreal-Version>" --no-cache
``` 

### Unreal Version available

The available versions :
- 5.0
- 5.2
- 5.3
- 5.4
- 5.5

If the Unreal version is not available, you can copy file from `C:\Program Files\Epic Games\UE_<version>\Engine\Content\Automation` to the `Automation` folder in a subfolder. The build argument `UNREALVERSION` has to be the same subfoler name.