program SelectionSorting;
const
     maks_data = 20;
type
    array_data = array[1..maks_data] of integer;
var
   data : array_data;
   N : integer;

   procedure IsiData(var data: array_data);
   var
    i: integer;
   begin
        write('Masukkan Jumlah Data : '); readln(N);
        for i:=1 to N do
        begin
             write('Data ke[',i,'] : '); readln(data[i]);
        end;
   end;

   //procedure tukar_data(var data1,data2 : integer);
   //var
   //   temp : integer;
   //begin
   //     temp := data1;
   //     data1 := data2;
   //     data2 := temp;
   //end;

   procedure selection_sort_max(var data: array_data; N : integer);
   var
      i,j,max,temp: integer;
   begin
        for i:=1 to (N-1) do

        begin
        max := 1;
             for j:= 2 to (N+1)-i do
             begin
                  if(data[j] > data[max])
                    then
                        max := j;
             end;
             temp := data[max];
             data[max] := data[j];
             data[j] := temp;
        end;
   end;

   procedure TampilData(var data: array_data);
   var
      i: integer;
   begin
        for i:=1 to N do
        begin
             write(data[i]);
             writeln(' ');
        end;
   end;
begin
   IsiData(data);
   writeln('Data Sebelum diurutkan');
   TampilData(data);
   writeln();

   selection_sort_max(data,N);
   writeln('Data Diurutkan Berdasarkan yang Paling Tinggi');
   writeln();
   TampilData(data);
   readln;
end.
