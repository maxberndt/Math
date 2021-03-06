function [result] = moving_average(input_array)
    
    l = length(input_array);
    
    rest = mod(l,3);
    
    n = l/3;
    
    if rest~=0
        error('Anzahl muss durch 3 teilbar sein!');
    end    
    
    c = 0;
    o = 1;
    avg = zeros(1,n);
    
    for i = 1:n
        c = 0;
        for e = 1:3
            c = c + input_array(o);
            o = o + 1;
        end
        avg(i) = c/3;
    end    
    
    result = avg;
end
