# Example Project Configurations

## Python FastAPI + React/Vite

```yaml
sessions:
  - name: "server"
    dir: "server"
    cmd: "source .venv/bin/activate && python3 -m uvicorn main:app --reload --port 8000"
    port: 8000

  - name: "client"
    dir: "client"
    cmd: "npm run dev"
    port: 5173
```

## Node.js Backend + Frontend

```yaml
sessions:
  - name: "api"
    dir: "api"
    cmd: "npm run dev"
    port: 3000

  - name: "web"
    dir: "web"
    cmd: "npm run dev"
    port: 3001
```

## Django + React

```yaml
sessions:
  - name: "django"
    dir: "backend"
    cmd: "source venv/bin/activate && python manage.py runserver 0.0.0.0:8000"
    port: 8000

  - name: "react"
    dir: "frontend"
    cmd: "npm start"
    port: 3000
```

## Single Service (e.g., Next.js)

```yaml
sessions:
  - name: "dev"
    dir: "."
    cmd: "npm run dev"
    port: 3000
```

## Monorepo with Multiple Services

```yaml
sessions:
  - name: "api"
    dir: "packages/api"
    cmd: "npm run dev"
    port: 4000

  - name: "web"
    dir: "packages/web"
    cmd: "npm run dev"
    port: 3000

  - name: "worker"
    dir: "packages/worker"
    cmd: "npm run dev"
    port: null  # No port, background worker
```
