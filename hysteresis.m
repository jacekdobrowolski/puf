function img = hysteresis(img,weak,strong=255)
  [M,N] = size(img);
  
  for(i=1:M-1)
    for(j=1:N-1)
      if(img(i,j) == weak)
        if ((img(i+1, j-1) == strong) || (img(i+1, j) == strong) || (img(i+1, j+1) == strong)
                        || (img(i, j-1) == strong) || (img(i, j+1) == strong)
                        || (img(i-1, j-1) == strong) || (img(i-1, j) == strong) || (img(i-1, j+1) == strong))
                        
          img(i,j) = strong;
        else
          img(i,j) = 0;
        endif
      endif
    end
  end
endfunction
