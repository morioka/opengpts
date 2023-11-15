FROM python:3.11-slim
WORKDIR /backend
COPY ./backend .
RUN rm poetry.lock
RUN pip install -r requirements.txt

#CMD exec langchain serve --port $PORT
#CMD ["langchain", "serve", "--host=0.0.0.0", "--port=8100"]
CMD exec uvicorn app.server:app --host 0.0.0.0 --port $PORT
