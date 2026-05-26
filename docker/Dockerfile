FROM python:3.12-slim AS builder

WORKDIR /app

COPY pyproject.toml .
COPY src/ src/
COPY tests/ tests/

RUN pip install --upgrade pip
RUN pip install --user ".[test]"

FROM python:3.12-slim

WORKDIR /app

COPY --from=builder /root/.local /root/.local
COPY src/ src/
COPY tests/ tests/

ENV PATH=/root/.local/bin:$PATH
ENV PYTHONPATH=/app

EXPOSE 8114

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8114"]
