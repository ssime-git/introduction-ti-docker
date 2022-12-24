# Base image
FROM python:3.8
# install the Pandas library
RUN pip install pandas
# the command to execute when starting the container
ENTRYPOINT [ "bash" ]