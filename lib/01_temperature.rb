def ctof (celsius)
return (celsius.to_f * 9/5 ) + 32
end

def ftoc (fahrenheit)
return (fahrenheit.to_f - 32) * 5/9
end

ftoc(32)
ftoc(212)
ftoc(98.6)
ftoc(68)

ctof(0)
ctof(100)
ctof(20)
ctof(37)
