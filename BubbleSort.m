#kaitlyn Krupa
#2019-04-28
#BubbleSort(arr, s)
#arr is the array
#s is the time in seconds for the pause

function arr = BubbleSort(arr, s)
x = [1:2:2*length(arr)];

bar(x, arr);
title("Bubble Sort")

for k=1:length(arr)
	for t=1:length(arr)-k
		if (arr(t) > arr(t+1))
			arrt = arr(t);
			arr(t) = arr(t+1);
			arr(t+1) = arrt;
		endif
	bar(x, arr);
	title("Bubble Sort")
	pause(s);
	endfor
endfor
	
endfunction