from flask import Flask, request, jsonify
from emotion_analysis_model import analyze_emotion
import requests

app = Flask(__name__)

OPENAI_API_KEY = 'your_openai_api_key'

@app.route('/capture-and-generate', methods=['GET'])
def capture_and_generate_route():
    # Capture image and analyze emotion
    # For simplicity, using a placeholder emotion
    emotion = 'placeholder_emotion'

    # Call OpenAI API to generate quotes based on emotion
    quotes = generate_quotes(emotion)

    return jsonify({'emotion': emotion, 'quotes': quotes})

def generate_quotes(emotion):
    # Call OpenAI API to generate list of quotes based on emotion
    headers = {
        'Content-Type': 'application/json',
        'Authorization': f'Bearer {OPENAI_API_KEY}'
    }
    data = {
        'prompt': f'Given the emotion {emotion}, generate 5 quotes.'
    }
    response = requests.post('https://api.openai.com/v1/completions', headers=headers, json=data)
    quotes = [choice['text'] for choice in response.json()['choices']]
    return quotes

if __name__ == '__main__':
    app.run(debug=True)
