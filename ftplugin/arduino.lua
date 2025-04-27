local root_files = {'platformio.ini'}
local paths = vim.fs.find(root_files,{stop=vim.env.HOME})
local root_dir = vim.fs.dirname(paths[1])
if root_dir == nil then
    root_dir = vim.fn.getcwd()
end
print(root_dir)
print(paths)
vim.lsp.start({
        cmd = {'/home/carlos/go/bin/arduino-language-server','-cli','/home/carlos/.local/bin/arduino-cli','cli-config','/home/carlos/.arduino15/arduino-cli.yaml','-fqbn','esp32:esp32:esp32'},
        root_dir = root_dir
}) 
