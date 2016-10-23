" Following 3 functions for working with Makefiles
function! Make()
    echom "Running make..."
    try
        let str = readfile("./.makedir")[0]
    catch
        let str = "."
    endtry
    execute "!make -C " . str
endfunction

function! MakeRun()
    echom "Running make run..."
    try
        let str = readfile("./.makedir")[0]
    catch
        let str = "."
    endtry
    execute "!make run -C " . str
endfunction

function! MakeClean()
    echom "Running make clean..."
    try
        let str = readfile("./.makedir")[0]
    catch
        let str = "."
    endtry
    execute "!make clean -C " . str
endfunction
