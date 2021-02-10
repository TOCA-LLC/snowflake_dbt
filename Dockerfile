FROM python:3.8-slim

RUN apt-get update && apt-get install -y curl bash rpm
RUN curl https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowflake-snowsql-1.2.9-1.x86_64.rpm -o snowflake-snowsql-1.2.9-1.x86_64.rpm
RUN rpm -i snowflake-snowsql-1.2.9-1.x86_64.rpm
RUN pip install dbt==0.19

CMD ["/bin/bash"]