~insertionSort = { |array|

	var tmp, j, data = [], steps = List.new;

	//array.postln;
	steps.add(array.deepCopy);

	(array.size-1).do{ |i|

		tmp = array[i+1];

		j = i;

		while ({(j >= 0) && {array[j] > tmp}},
			{
				array.put(j + 1, array[j]);

				j = j - 1;
		});

		array.put(j+1, tmp);
		//array.postln;
		steps.add(array.deepCopy);
	};

	steps.collect{|x|

		data = data.add(x);
	};

	data = data.unbubble(0,1);
	data
};

a = [4,3,2,1]
b = ~insertionSort.value(a)