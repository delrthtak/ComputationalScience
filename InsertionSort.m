#kaitlyn Krupa
#2019-04-27
#InsertionSort(arr, s)
#arr is the array
#s is the time in seconds for the pause


function arr = InsertionSort(arr, s)
x = [1:2:2*length(arr)];

bar(x, arr);
title("Insertion Sort")

for k=2:length(arr)
	temp = arr(k);
	t = k - 1;
	for y=k:-1:2
		if arr(y) < arr(y-1)
			#hold on; bar(x(y), arr(y), "r", 0.4)
			#hold on; bar(x(y-1), arr(y-1), "r", 0.4)
			arrym = arr(y-1);
			arr(y-1) = arr(y);
			arr(y) = arrym;
		else
			break;
		endif
	bar(x, arr);
	title("Insertion Sort")
	pause(s);
	endfor
endfor


endfunction