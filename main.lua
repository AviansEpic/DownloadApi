local api = {}

function api:DownloadFromUrl(filetosave, url)
  writefile(filetosave, game:HttpGet(url))
end

function api:CreateFileIfDoesntExist(name, contents)
 if not isfile(name) then
    writefile(name, contents)
    return true
 end
  return false
end

function api:Cut(file, newfilename)
  local contents = readfile(file)
  delfile(file)
  
  writefile(newfilename, contents)
end

return api
