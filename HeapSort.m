#kaitlyn Krupa
#2019-04-28
#HeapSort(arr, s)
#arr is the array
#s is the time in seconds for the pause(s)
#theres a function inside this function called siftDown

function list = HeapSort(list, s)
x = [1:2:2*length(list)];

	function list = siftDown(list, root, theEnd, s)
	x = [1:2:2*length(list)];
	while (root*2 < theEnd)
		#display("while sift");
		child = root*2;
		if ((child+1 <= theEnd) && (list(child) < list(child+1)))
			child = child+1;
		endif
		if (list(root) < list(child))
			list([root child]) = list([child root]);
			root = child;
		else
			return
		endif
		bar(x, list);
		title("Heap Sort")
		pause(s);
	endwhile
	endfunction

ct = numel(list);
start = floor(ct/2);

while (start >= 1)
	#display("while 1");
	list = siftDown(list, start, ct, s);
	start = start-1;
	bar(x, list);
	title("Heap Sort")
	pause(s);
endwhile

while (ct > 1)
	#display("while 2");
	list([ct 1]) = list([1 ct]);
	ct -= 1;
	list = siftDown(list, 1, ct, s);
	bar(x, list);
	title("Heap Sort")
	pause(s);
endwhile

bar(x, list);
title("Heap Sort")

endfunction