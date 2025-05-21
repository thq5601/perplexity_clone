from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.sort_source_service import SortSourceService
from services.search_service import SearchService

app = FastAPI()

# check if the server is running
# @app.get("/")
# def hello_world():
#     return "Hello World"

search_service = SearchService()
sort_source_service = SortSourceService()

#chat
@app.post("/chat")
def chat_endpoint(body: ChatBody):
    # Step 1: search the web and fint appropriate sources
    search_results = search_service.web_search(body.query)
    # Step 2: sort the sources
    sort_source_service.sort_sources(body.query, search_results)
    # Step 3: generate the response using LLM
    return body.query