import google.generativeai as genai
from config import Settings

settings = Settings()

class GeminiService:
    def __init__(self):
        genai.configure(api_key=settings.GEMINI_API_KEY)
        self.model = genai.GenerativeModel("gemini-2.5-flash-preview-04-17")

    def generate_response(self, query: str, search_results: list[dict]):
        context_text = "\n\n".join(
            [
                f"Source {i+1} ({result['url']}):\n{result['content']}"
                for i, result in enumerate(search_results)
            ]
        )

        full_prompt = f"""
        Context form web search:
        {context_text}

        Query: {query}

        Please provide a detailed answer to the query based on the context provided.
        """

        response = self.model.generate_content(full_prompt, stream= True)
        
        for chunk in response:        
            yield chunk.text