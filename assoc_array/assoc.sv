/*module associative_array;
  //array declaration
  int a_array[*]; 
  int index;
   
  initial begin
    //allocating array and assigning value to it
    repeat(3) begin
      a_array[index] = index*2;
      index=index+4;
    end

    //num() ľAssociative array method
    $display("\tNumber of entries in a_array is %0d",a_array.num());
    $display("--- Associative array a_array entries and Values are ---");
    //foreach(a_array[index]) 
    $display("\ta_array \t = %0p",a_array);
    $display("--------------------------------------------------------");
     
    //first()-Associative array method
    a_array.first(index);
    $display("\First entry is \t a_array[%0d] = %0d",index,a_array[index]);
 
    //last()-Associative array method
    a_array.last(index);
    $display("\Last entry is \t a_array[%0d] = %0d",index,a_array[index]);
  end
endmodule*/
module associative_array;
  //array declaration
  int a_array[*]; 
  int index;
   
  initial begin
    //allocating array and assigning value to it
    repeat(3) begin
      a_array[index] = index*2;
      index=index+4;
    end
     
    //exists()-Associative array method
    if(a_array.exists(8))
      $display("Index 8 exists in a_array");
    else
      $display("Index 8 doesnt exists in a_array");
     
    //last()-Associative array method
    a_array.last(index);
    $display("Last entry is a_array[%0d] = %0d",index,a_array[index]);
     
    //prev()-Associative array method
    a_array.prev(index);
    $display("prev entry is a_array[%0d] = %0d",index,a_array[index]);
     
    //next()-Associative array method
    a_array.next(index);
    $display("next entry is a_array[%0d] = %0d",index,a_array[index]);
  end
endmodule
