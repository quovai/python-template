# Python Template

A Docker-based Python development template.

## Clone the Repository

```bash
git clone https://github.com/quovai/python-template.git
cd python-template
```

## Build the Container

**Docker:**
```bash
docker-compose build
```

**Makefile:**
```bash
make build
```

## Run the Application

**Docker:**
```bash
docker-compose run --rm python-app python main.py
```

**Makefile:**
```bash
make run
```

## Open an Interactive Shell

**Docker:**
```bash
docker-compose run --rm python-app bash
```

**Makefile:**
```bash
make shell
```

## Modify the Code

Edit `main.py` on your host machine. The changes will be reflected when you run the container again (no rebuild needed thanks to volume mounting).

## Add Libraries

Add your dependencies to `requirements.txt`:

```
requests==2.31.0
pandas==2.1.0
```

Then rebuild the container:

**Docker:**
```bash
docker-compose build
```

**Makefile:**
```bash
make build
```

## Clean Up

**Docker:**
```bash
docker-compose down --rmi local
```

**Makefile:**
```bash
make clean
```

## Modify the Application

1. Edit `main.py` for the entry point
2. Create additional Python files as needed
3. Run the container to test changes
