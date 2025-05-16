from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService

app = FastAPI()

# check if the server is running
# @app.get("/")
# def hello_world():
#     return "Hello World"

search_service = SearchService()

#chat
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    # Step 1: search the web and fint appropriate sources
    search_service.web_search(body.query)
    # Step 2: sort the sources
    # Step 3: generate the response using LLM
    return body.query