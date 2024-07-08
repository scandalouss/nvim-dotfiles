require("project_nvim").setup{
    manual_mode=false,
    exclude_dirs={"/home/david",},
    silent_chdir=false,
    datapath = vim.fn.stdpath("data"),
    detection_methods={"pattern","lsp"},
    patterns={
        ".git",
        ".svn",
        "Makefile",
        ".uproject",
        "pubspec.yaml",
        "build.zig",
        ".vscode",
        "package.json",
        "CMakeLists.txt",
        "Cargo.toml",
    },
}
