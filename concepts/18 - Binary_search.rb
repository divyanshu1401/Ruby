def binary_search(arr,num)
    l = arr.length
    start = 0
    last = l - 1
    while(start <= last)
        mid = (start + last)/2
        return mid if arr[mid] == num
        if num > arr[mid]
            start = mid + 1
        else
            last = mid - 1
        end
    end
    return -1
end

arr = [10,20,25,35,45,60,80,82,100]   
puts binary_search(arr, 45)
puts binary_search(arr, 82)
puts binary_search(arr, 100)
puts binary_search(arr, 10)
puts binary_search(arr, 35)
puts binary_search(arr, 45)
puts binary_search(arr, 60)
puts binary_search(arr, 600)