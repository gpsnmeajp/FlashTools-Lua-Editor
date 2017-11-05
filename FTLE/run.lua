require "/FTLE/breakpoint" --breakpoint & putMessage in Run & Debug mode

print "HTTP/1.1 200 OK"
print ""
print "Hello World"

putMessage("START")
for i=1 , 3 do
    fa.pio(0xE,0xE)
    sleep(500)
    fa.pio(0xE,0x0)
    sleep(500)
   
    breakpoint() --Catch Break(F8) signal
    putMessage(i) --Put message to GetMsg(F9) (254Bytes limit)
end

sleep(500)
putMessage("END")