return {
  "mfussenegger/nvim-dap-python",
  init = function ()
    local python_venv_path = os.getenv("VIRTUAL_ENV")

    if python_venv_path then
      require("dap-python").setup(python_venv_path .. "/bin/python")
    end

  end
}
