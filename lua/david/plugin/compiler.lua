require("overseer").setup{
    templates={"builtin",},
    strategy="terminal",
    dap=true,
    task_list={
        direction="bottom"
    }
}
require("compiler").setup()
