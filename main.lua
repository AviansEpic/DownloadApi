local api = {}

function api:DownloadFromUrl(filetosave, url)
  writefile(filetosave, game:HttpGet((url), true))
end

function api:CreateFileIfDoesntExist(name, contents)
 if not isfile(name) then
    writefile(name, contents)
    return true
 end
  return false
end

return api
