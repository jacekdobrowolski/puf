function [res,weak,strong] = threshold(img,low=0.05,high=0.09)
  highThresh = max(img)*high;
  lowThresh = max(img)*low;
  
  [M,N] = size(img);
  res = zeros(M,N);
  
  %only two values
  weak = 25;
  strong = 255;
  
  for(i=1:M)
    for(j=1:N)
     if(img(i,j) < lowThresh)
      res(i,j) = 0;
     elseif(img(i,j) >= highThresh)
      res(i,j) = strong;
     elseif(lowThresh<=img(i,j) && img(i,j)<highThresh)
      res(i,j) = weak;
     endif
    end
  end
endfunction
