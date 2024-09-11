import locale
import importlib

def get_language():
    # 시스템 언어 설정을 가져옴
    lang = locale.getdefaultlocale()[0]
    if lang.startswith('ko'):
        return 'ko'
    else:
        return 'en'

def load_messages():
    # 언어 코드에 맞는 메시지 파일을 로드
    lang_code = get_language()
    lang_module = importlib.import_module(f"lang.messages_{lang_code}")
    return lang_module.messages

def main():
    messages = load_messages()
    print(messages['Welcome to Bumplab.AI's articles!'])
    
    topic = input(messages['prompt'])
    # 여기에 실제 뉴스 검색 로직을 구현하시면 됩니다.
    # 예시를 위해 입력받은 주제가 없다고 가정합니다.
    print(messages['Error bumper code! Article not found.'])

if __name__ == "__main__":
    main()
