from openai import OpenAI

client = OpenAI(
    api_key="sk-ZXk1HaolLp6BU68B236e1eF237B24fFf9910E4CbEd619a9e", # ← Tu token ya está aquí
    base_url="https://api.apiyi.com/v1"
)

response = client.chat.completions.create(
    model="gpt-4.1-mini",
    messages=[{"role": "user", "content": "Hola, ¿cómo funcionas?"}]
)

print(response.choices[0].message.content)