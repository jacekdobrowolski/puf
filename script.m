function res = script(img)
  img = rgb2gray(img);
  g = gauss(5,1.1);
  img_f = imfilter(img,g);
  [Grad,theta] = sobel(img_f);
  img_non_max = non_max(Grad,theta);
  [res,weak,strong] = threshold(img_non_max);
  result = hysteresis(res,weak,strong);
  imshow(result);
endfunction
