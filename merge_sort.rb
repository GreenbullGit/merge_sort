def merge_sort(array)
	n=array.size/2
	if array.length==1
		return array
	end
	array1=merge_sort(array[0..n-1])
	array2=merge_sort(array[n..-1])

	return merge(array1,array2)

end

def merge(array1, array2)
	sorted=[]
	size= array1.size + array2.size
	size.times do 
		if array1[0] < array2[0]	
			sorted << array1.slice!(0)
			array1 << Float::INFINITY if array1.empty?
		else
			sorted << array2.slice!(0)
			array2 << Float::INFINITY if array2.empty?
		end
	end
	return sorted
end

puts merge_sort([81,30,23,55,43,10,9,90])