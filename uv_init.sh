# 1. Pin the interpreter for this project (writes .python-version)
uv python install 3.12        # downloads a managed CPython if you don't have one
uv python pin 3.12

# 2. Create the venv and resolve/install everything
uv venv                       # uses the pinned 3.12
uv sync --extra dev           # add --extra llm if you want the LangChain stack

# 3. Sanity check
uv run python -c "import scanpy as sc, numba, numpy; print(sc.__version__, numba.__version__, numpy.__version__)"