FROM python:3.10
WORKDIR /usr/src/app
COPY /script /usr/src/app/script
RUN pip install --no-cache-dir --upgrade pip setuptools
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]