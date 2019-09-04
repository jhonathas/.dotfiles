call altr#remove_all()
call altr#define('web/%/%.ex', 'lib/%/%.ex', 'test/%/%_test.exs')
call altr#define('app/%/%.rb', 'test/%/%_test.rb')
nmap <leader>gt <Plug>(altr-forward)
