import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class data {
    public static void main(String[] args) {

        // try catch 在讀data.csv
        String line;
        List<String[]> data = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader("HW2data.csv"))) {
            br.readLine(); // 跳過第一行
            while ((line = br.readLine()) != null) {
                String[] row = line.split(",");
                data.add(row);
            }
        }
        // Error : data.csv
        catch (IOException e) { 
            e.printStackTrace();
        }

        try (FileWriter fw = new FileWriter("outputJava.csv")) {
            fw.write("NO,ID,Name,score,grade\n");
            for (String[] row : data) {
                double score = (Double.parseDouble(row[3]) 
                        + Double.parseDouble(row[4])
                        + Double.parseDouble(row[5])) * 0.1
                        + Double.parseDouble(row[6]) * 0.3
                        + Double.parseDouble(row[7]) * 0.4;
                score = Math.round(score * 100.0) / 100.0; // 四捨五入到小數點第二位
                double score1 = Math.round(score); // 比較，到整數

                try (BufferedReader gradeReader = new BufferedReader(new FileReader("HW2grade.csv"))) {
                    gradeReader.readLine(); // 跳過第一行
                    String gradeLine;
                    while ((gradeLine = gradeReader.readLine()) != null) {
                        String[] g = gradeLine.split(",");
                        double lBound = Double.parseDouble(g[0]);
                        double uBound = Double.parseDouble(g[1]);
                        if (score1 >= lBound && score1 <= uBound) {
                            fw.write(row[0] + "," + row[1] + "," + row[2] + "," + score + "," + g[2] + "\n");
                            break;
                        }
                    }
                } 
                // Error : 對應到 gradereader
                catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        // Error : 對應到 filewriter
        catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("Success!");
    }
}