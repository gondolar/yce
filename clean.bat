@echo off

set "directories=.\thermuino\.pio .\pyholder\__pycache__ .\phyton\__pycache__"

for %%i in (%directories%) do (
    rd /s /q "%%i"
)