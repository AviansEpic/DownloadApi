local api = {}

api:DownloadFromUrl(name, url)
  writefile(name, game:HttpGet(url))
end

api:DuplicateFile(filename, newname)
  writefile(newname, readfile(filename))
end)

return api
