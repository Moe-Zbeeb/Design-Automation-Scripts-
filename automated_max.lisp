; Define a list
set myList list(3 7 1 9 4)

; Initialize maximum to the first element of the list
set maxVal car(myList)

; Iterate through the list
foreach elem cdr(myList)
    ; Update maxVal if the current element is greater
    if(> elem maxVal)
        set maxVal elem
    endif
end

; Print the maximum value
princ("Maximum value in the list: " maxVal)
