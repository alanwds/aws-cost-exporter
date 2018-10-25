FROM python:3

ADD aws-cost-exporter.py /

RUN pip3 install boto3 
RUN pip3 install prometheus_client

CMD [ "python", "./aws-cost-exporter.py" ]
