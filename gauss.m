function B = gauss(size,sigma)
  if(mod(size,2) == 1) size = 5; end
  k = (size-1)/2;
  normal = 1/(2*pi*(sigma^2));
  A = ones(size);
  
  for(i=1:size)
    for(j=1:size)
      A(i,j) = normal*exp(-(((i-(k+1))^2+(j-(k+1))^2)/(2*(sigma^2))));
    end
  end
   B = A;   
endfunction
