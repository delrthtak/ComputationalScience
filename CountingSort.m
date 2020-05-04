#kaitlyn Krupa
#2019-04-28
#CountingSort(arr, s)
#arr is the array
#s is the time in seconds between plotting the bar graph

function r = CountingSort(arr, s)
x = [1:2:2*length(arr)];

min = arr(1);
max = arr(1);
n = length(arr);

for k=1:n
	if (arr(k) < min)
		min = arr(k);
	endif
	if (arr(k) > max)
		max = arr(k);	
	endif
endfor

arrp = arr;

bar(x, arrp);
title("Counting Sort")
pause(s);

for k=1:n+1
	bar(x, arrp);
	title("Counting Sort")
	arrp(k) = 0;
	pause(s);	
endfor

r = zeros(1,n);
z = 1;
for i=min:max
	ct = sum(arr == i);
	while (ct-- > 0)
		pause(s);
		#bar(x, r)
		r(z++) = i;
		bar(x, r)
		title("Counting Sort")
	endwhile
endfor
endfunction