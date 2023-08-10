" function! InsertTagLinks(tagsfile)
"   let tags = readfile(a:tagsfile)
"   let qflist = []
"   for tag in tags
"     let parts = split(tag, "\t")
"     let qf_item = { 'filename': parts[1], 'text': parts[0] }
"     call add(qflist, qf_item)
"   endfor
"   call setqflist(qflist)
"   cwindow
"   let selected_tags = getqflist()
"   let tag_links = []
"   for tag in selected_tags
"     let tag_link = '['.tag['text'].']('.tag['filename'].')'
"     call add(tag_links, tag_link)
"   endfor
"   let tags_links_string = join(tag_links, "\n")
"   call append(line('.'), tags_links_string)
" endfunction

function! InsertTagLinks(tagsfile)
  let tags = readfile(a:tagsfile)
  let qflist = []
  for tag in tags
    let parts = split(tag, "\t")
    let qf_item = { 'filename': parts[1], 'text': parts[0] }
    call add(qflist, qf_item)
  endfor
  call setqflist(qflist)
  copen
  endfunction
