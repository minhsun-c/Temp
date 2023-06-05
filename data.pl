% 定義級距
grade(90, 'A+').
grade(85, 'A').
grade(80, 'A-').
grade(77, 'B+').
grade(73, 'B').
grade(70, 'B-').
grade(67, 'C+').
grade(63, 'C').
grade(60, 'C-').
grade(50, 'D').
grade(0, 'E').

% 一筆資料有 7 個參數
:- dynamic(data/7).

% 新增資料（含 7 個參數）
add_data(Name, Id, Hw1, Hw2, Hw3, Mid, Final) :-
    assertz(data(Name, Id, Hw1, Hw2, Hw3, Mid, Final)).
    
% 計算學生平均成績
get_average(Name, Avg) :-
    data(Name, Id, Hw1, Hw2, Hw3, Mid, Final),
    Avg is Hw1 * 0.1 + Hw2 * 0.1 + Hw3 * 0.1 + Mid * 0.3 + Final * 0.4.

% 計算等第
get_level(Score, Level) :-
    grade(Lbound, Level),
    Score >= Lbound.

main(Score, Gra) :-
	format('NO, Name, ID, score, grade ~n'),
	
	add_data('Alan', '410021001', 90, 84.5, 117, 60, 66),
	get_average('Alan', Score),
	get_level(round(Score), Gra),
	format('1, Alan, 410021001, ~2f, ~w ~n', [Score, Gra]),

	add_data('Bob', '410021002', 85, 49, 80, 57, 64),
	get_average('Bob', Score1),
	get_level(round(Score1), Gra1),
	format('2, Bob, 410021002, ~2f, ~w ~n', [Score1, Gra1]),

	add_data('Carrie', '410021003', 90, 110.5, 117, 68, 62),
	get_average('Carrie', Score2),
	get_level(round(Score2), Gra2),
	format('3, Carrie, 410021003, ~2f, ~w ~n', [Score2, Gra2]),

	add_data('David', '410021004', 117, 85, 0, 44, 55),
	get_average('David', Score3),
	get_level(round(Score3), Gra3),
	format('4, David, 410021004, ~2f, ~w ~n', [Score3, Gra3]),

	add_data('Ethan', '410021005', 85, 56, 50, 57, 67),
	get_average('Ethan', Score4),
	get_level(round(Score4), Gra4),
	format('5, Ethan, 410021005, ~2f, ~w ~n', [Score4, Gra4]),

	add_data('Frank', '410021006', 90, 65, 65, 72, 66),
	get_average('Frank', Score5),
	get_level(round(Score5), Gra5),
	format('6, Frank, 410021006, ~2f, ~w ~n', [Score5, Gra5]),

	add_data('Gary', '410021007', 117, 110.5, 65, 69, 43),
	get_average('Gary', Score6),
	get_level(round(Score6), Gra6),
	format('7, Gary, 410021007, ~2f, ~w ~n', [Score6, Gra6]),

	add_data('Helen', '410021008', 117, 65, 50, 43, 54),
	get_average('Helen', Score7),
	get_level(round(Score7), Gra7),
	format('8, Helen, 410021008, ~2f, ~w ~n', [Score7, Gra7]),

	add_data('Igor', '410021009', 63, 59.5, 50, 51, 75),
	get_average('Igor', Score8),
	get_level(round(Score8), Gra8),
	format('9, Igor, 410021009, ~2f, ~w ~n', [Score8, Gra8]),

	add_data('Jeff', '410021010', 117, 110.5, 117, 53, 75),
	get_average('Jeff', Score9),
	get_level(round(Score9), Gra9),
	format('10, Jeff, 410021010, ~2f, ~w ~n', [Score9, Gra9]),

	add_data('King', '410021011', 100, 100, 100, 56, 68),
	get_average('King', Score10),
	get_level(round(Score10), Gra10),
	format('11, King, 410021011, ~2f, ~w ~n', [Score10, Gra10]),

	add_data('Leo', '410021012', 95, 90, 85, 58, 53),
	get_average('Leo', Score11),
	get_level(round(Score11), Gra11),
	format('12, Leo, 410021012, ~2f, ~w ~n', [Score11, Gra11]),

	add_data('Mark', '410021013', 100, 90, 90, 81, 72),
	get_average('Mark', Score12),
	get_level(round(Score12), Gra12),
	format('13, Mark, 410021013, ~2f, ~w ~n', [Score12, Gra12]),

	add_data('Nancy', '410021014', 80, 85, 90, 64, 57),
	get_average('Nancy', Score13),
	get_level(round(Score13), Gra13),
	format('14, Nancy, 410021014, ~2f, ~w ~n', [Score13, Gra13]),

	add_data('Oliver', '410021015', 75, 90, 100, 72, 63),
	get_average('Oliver', Score14),
	get_level(round(Score14), Gra14),
	format('15, Oliver, 410021015, ~2f, ~w ~n', [Score14, Gra14]),

	add_data('Peter', '410021016', 60, 75, 85, 69, 58),
	get_average('Peter', Score15),
	get_level(round(Score15), Gra15),
	format('16, Peter, 410021016, ~2f, ~w ~n', [Score15, Gra15]),

	add_data('Quincy', '410021017', 85, 80, 90, 44, 39),
	get_average('Quincy', Score16),
	get_level(round(Score16), Gra16),
	format('17, Quincy, 410021017, ~2f, ~w ~n', [Score16, Gra16]),

	add_data('Richar', '410021018', 90, 85, 80, 52, 48),
	get_average('Richar', Score17),
	get_level(round(Score17), Gra17),
	format('18, Richar, 410021018, ~2f, ~w ~n', [Score17, Gra17]),

	add_data('Steve', '410021019', 100, 90, 90, 83, 61),
	get_average('Steve', Score18),
	get_level(round(Score18), Gra18),
	format('19, Steve, 410021019, ~2f, ~w ~n', [Score18, Gra18]),

	add_data('Tom', '410021020', 100, 100, 100, 76, 74),
	get_average('Tom', Score19),
	get_level(round(Score19), Gra19),
	format('20, Tom, 410021020, ~2f, ~w ~n', [Score19, Gra19]).


/*
執行時輸入
main(Score, Gra).
*/