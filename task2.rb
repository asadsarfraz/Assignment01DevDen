 def func(str)
    length = 0
    currentLength = 1 
    lastR=0
 x= str.split(",")
 if(x.length==0)
    p "answer :0"
 else
    x.each do |d|
        da=d.split("-")
        l = da[0]
        r = da[1]
        if (l == lastR)
            currentLength=currentLength+1
        else 
            if (currentLength > length)
                 length = currentLength
                 currentLength=1
            end   
        end
        lastR=r
        if (currentLength > length) 
            length = currentLength
            
        end
 end
 p length
  end
end
 func("1-1,3-5,5-2,2-3,2-4")
 func("1-1,3-5,5-5,5-4,4-2,1-3")
