import papermill

papermill.execute_notebook(
   './input.ipynb',
   './output.ipynb',
   parameters = dict(a=0.6, b=0.1)
)