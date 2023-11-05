python -m venv tmpEnv

CALL ".\tmpEnv\Scripts\activate"

pip install conan==1.61.0

conan install conanfile.txt