# Stage 1: Build
FROM python:3.9-slim AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --user -r requirements.txt

COPY app.py .

# Stage 2: Final image
FROM python:3.9-slim

WORKDIR /app

COPY --from=build /root/.local /root/.local
COPY --from=build /app /app

ENV PATH=/root/.local/bin:$PATH

EXPOSE 80

CMD ["python", "app.py"]
