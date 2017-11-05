print "HTTP/1.1 200 OK"
print "Cache-Control: private, no-store, no-cache, must-revalidate"
print ""

if(arg[1] == nill)then
	print("Path not found")
	return
end

local path = string.match(arg[1],"([^%c]+)")
if(path == nill)then
	print("Path not found")
	return
end

path = path:gsub("|"," ")
local f = lfs.mkdir(path)

if(f)then
	print("OK")	
else
	print("Path error")
end

