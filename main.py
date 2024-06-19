from fastapi import FastAPI
from os import environ as env
from dotenv import load_dotenv

app = FastAPI()

load_dotenv()


@app.get("/")
def index():
    my_variable = env.get('MY_VARIABLE')
    return {"detail": f"Hello World: {my_variable}"}
