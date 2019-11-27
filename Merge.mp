Program Teste (input, output);
var
	vetor: array [1..100] of integer;

procedure MergeProc(v : array [1..100] of integer; p, q, r: integer);
var
	n1, n2, i, j, k : integer;
var
	B : array [1..100] of integer;
begin
  i := 0;
  j :=0;
  k := 0;
  n1 := q - p + 1;
  n2 := r - q;
  k := p;
  while p < r do
  begin
    B[k - p + 1] := v[k];
	p := p + 1
  end;
  i := 1;
  j :=n1 + 1;
  k := p;
  while(j <= n1 + n2)do
  begin
    if B[i] <= B[j] then 
    begin
      v[k] := B[i];
      i := i + 1
    end
    else
    begin
      v[k] := B[j];
      j := j + 1
    end;
    k := k + 1
  end;

  while i <= n1 do
  begin
    v[k] := B[i];
    i := i + 1;
    k := k + 1
  end;

  while j <= n1 + n2 do
  begin
    v[k] := B[j];
    j := j + 1;
    k := k + 1
  end  
end;


	procedure MergeSort (v : array [1..100] of integer; p, r: integer);
	var 
		q: integer;
	begin
		if p < r then
			begin
				q := (p + r) / 2;
				MergeSort (v, p, q);
				MergeSort (v, q + 1, r);
				MergeProc (v, p, q, r)
			end
		else
			begin
			end
	end;

begin
end.