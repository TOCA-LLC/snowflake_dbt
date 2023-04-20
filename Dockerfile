FROM python:3.8-slim

RUN apt-get update && apt-get install -y curl bash rpm git rsync

# Download the SnowSQL RPM binary
RUN curl https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowflake-snowsql-1.2.24-1.x86_64.rpm -o snowflake-snowsql-1.2.24-1.x86_64.rpm

# Install the SnowSQL RPM package
# https://docs.snowflake.com/en/user-guide/snowsql-install-config#installing-the-snowsql-rpm-package
RUN rpm -i snowflake-snowsql-1.2.24-1.x86_64.rpm

# Copy requirements.txt
COPY requirements.txt requirements.txt

# Install requirements.txt
RUN pip install -r rquirements.txt

CMD ["/bin/bash"]