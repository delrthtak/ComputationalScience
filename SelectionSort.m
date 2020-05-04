#kaitlyn Krupa
#2019-04-27
#SelectionSort(arr, s)
#arr is the array
#s is the time in seconds for the pause
#so far only plots the graphs and sorts the arr nothing fancy looking

function arr = SelectionSort(arr, s)
x = [1:2:2*length(arr)];

bar(x, arr)
title("Selection Sort")

for k=1:length(arr)
	minimum = arr(k);
	location = k;
	#bar(x(location), arr(location), "r");
	for t=k:length(arr)
		#hold on; bar(x(t), arr(t), "r", 0.5);
		if (arr(t) < minimum)
			minimum = arr(t);
			location = t;
			#bar(x, arr)
			#hold on; bar(x(location), arr(location), "r", 0.5);
		endif
	endfor
	arr(location) = arr(k);
	arr(k) = minimum;
	bar(x, arr);
	title("Selection Sort")
	pause(s);
endfor

endfunction