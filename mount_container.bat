@echo off

set DOCKER_IMAGE=ubuntu-daniel
set HOST_DIR=//c/users/danie/mount
set CONTAINER_DIR=/opt/software/data
set SCRIPT_LOCATION=/opt/software/process_offsite_audio
set SCRIPT=interview_video_process.sh setup/example_config.sh

docker run -it --rm -v %HOST_DIR%:%CONTAINER_DIR% %DOCKER_IMAGE% /bin/bash -c "cd %SCRIPT_LOCATION% && bash %SCRIPT%"