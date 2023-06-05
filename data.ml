val stuid = ["410021001","410021002","410021003","410021004","410021005","410021006","410021007","410021008","410021009","410021010","410021011","410021012","410021013","410021014","410021015","410021016","410021017","410021018","10021019","410021020"];

val name = ["Alan","Bob","Carrie","David","Ethan","Frank","Gary","Helen","Igor","Jeff","King","Leo","Mark","Nancy","Oliver","Peter","Quincy","Richar","Steve","Tom"];

val h1 = [90.00,85.00,90.00,117.00,85.00,90.00,117.00,117.00,63.00,117.00,100.00,95.00,100.00,80.00,75.00,60.00,85.00,90.00,100.00,100.00];

val h2 = [84.50,49.00,110.50,85.00,56.00,65.00,110.50,65.00,59.50,110.50,100.00,90.00,90.00,85.00,90.00,75.00,80.00,85.00,90.00,100.00];

val h3 = [117.00,80.00,117.00,0.00,50.00,65.00,65.00,50.00,50.00,117.00,100.00,85.00,90.00,90.00,100.00,85.00,90.00,80.00,90.00,100.00];

val mid = [60.00,57.00,68.00,44.0,57.00,72.00,69.00,43.00,51.00,53.00,56.00,58.00,81.00,64.00,72.00,69.00,44.00,52.00,83.00,76.00];

val final = [66.00,64.00,62.00,55.00,67.00,66.00,43.00,54.00,75.00,75.00,68.00,53.00,72.00,57.00,63.00,58.00,39.00,48.00,61.00,74.00];


fun score_int(n) =
	round(List.nth(h1, n)*0.1+List.nth(h2, n)*0.1+List.nth(h3, n)*0.1+List.nth(mid, n)*0.3+List.nth(final, n)*0.4);

fun score_2dec(n) =
	let
        val score = List.nth(h1, n)*0.1+List.nth(h2, n)*0.1+List.nth(h3, n)*0.1+List.nth(mid, n)*0.3+List.nth(final, n)*0.4;
    in
        real (round (score * 100.0)) / 100.0
    end

fun grade(n)=
	if(n>=90) then "A+"
	else if(n>=85) then "A"
	else if(n>=80) then "A-"
	else if(n>=77) then "B+"
	else if(n>=73) then "B"
	else if(n>=70) then "B-"
	else if(n>=67) then "C+"
	else if(n>=63) then "C"
	else if(n>=60) then "C-"
	else if(n>=50) then "D"
	else "E";

fun get_id_name(n) =
	List.nth(stuid, n)^", "^List.nth(name, n)^", ";

fun get_score_grade(n) = 
    Real.toString(score_2dec(n))^", "^grade(score_int(n));

print("1, "^get_id_name(0)^ get_score_grade(0)^" ");
print("2, "^get_id_name(1)^ get_score_grade(1)^" ");
print("3, "^get_id_name(2)^ get_score_grade(2)^" ");
print("4, "^get_id_name(3)^ get_score_grade(3)^" ");
print("5, "^get_id_name(4)^ get_score_grade(4)^" ");
print("6, "^get_id_name(5)^ get_score_grade(5)^" ");
print("7, "^get_id_name(6)^ get_score_grade(6)^" ");
print("8, "^get_id_name(7)^ get_score_grade(7)^" ");
print("9, "^get_id_name(8)^ get_score_grade(8)^" ");
print("10, "^get_id_name(9)^ get_score_grade(9)^" ");
print("11, "^get_id_name(10)^ get_score_grade(10)^" ");
print("12, "^get_id_name(11)^ get_score_grade(11)^" ");
print("13, "^get_id_name(12)^ get_score_grade(12)^" ");
print("14, "^get_id_name(13)^ get_score_grade(13)^" ");
print("15, "^get_id_name(14)^ get_score_grade(14)^" ");
print("16, "^get_id_name(15)^ get_score_grade(15)^" ");
print("17, "^get_id_name(16)^ get_score_grade(16)^" ");
print("18, "^get_id_name(17)^ get_score_grade(17)^" ");
print("19, "^get_id_name(18)^ get_score_grade(18)^" ");
print("20, "^get_id_name(19)^ get_score_grade(19)^" ");
