//bubbleSort algorithm

f = {|array|
     var tmp, swapped = false;
     (array.size-1).do{|i|
         if(array[i]>array[i+1]) {
             tmp = array[i];
             array[i] = array[i+1];
             array[i+1] = tmp;
             swapped = true;
         };
     };
     swapped;
};

~bubbleSort = { |array|
	var flag, tmp, data = [];
	while ( { flag != false }, {tmp = array.deepCopy; flag = f.(array); data = data.add(tmp)});
	data
}


//example
a = [4,3,2,1];
b = ~bubbleSort.value(a)



// inverse bubbleSort algorithm

g = {|array|
     var tmp, swapped = false;
     (array.size-1).do{|i|
         if(array[i]<array[i+1]) {
             tmp = array[i];
             array[i] = array[i+1];
             array[i+1] = tmp;
             swapped = true;
         };
     };
     swapped;
};

~invBubbleSort = { |array|
	var flag, tmp, data = [];
	while ( { flag != false }, {tmp = array.deepCopy; flag = g.(array); data = data.add(tmp)});
	data
}

//example
w = [1,2,3,4]
x = ~invBubbleSort.value(w)

