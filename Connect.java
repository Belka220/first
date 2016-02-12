import org.apache.commons.fileupload.FileItem;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;


public class Connect {
    public static Connection conn;
    public static Statement statmt;
    public static ResultSet resSet;

    // --------ПОДКЛЮЧЕНИЕ К БАЗЕ ДАННЫХ--------
    public static void Connect() throws ClassNotFoundException, SQLException
    {
        conn = null;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/file", "root" , "vfrcbv");

        System.out.println("База Подключена!");
    }

    // --------Создание таблицы--------
    public static void CreateDB() throws ClassNotFoundException, SQLException
    {

        System.out.println("Таблица создана или уже существует.");}

    // --------Заполнение таблицы--------
    public static void WriteDB(String first, InputStream second, long third ) throws SQLException, FileNotFoundException {
/*
        FileInputStream fis = null;
        File file = new File("144.jpg");
        fis = new FileInputStream(file);

        statmt.execute("INSERT INTO myfiles VALUES ('1', 'Petya', 'fis'); ");
*/

        String INSERT_PICTURE = "insert into myfiles (id, name, files) values (?, ?, ?)";

        FileInputStream fis = null;
        PreparedStatement ps = null;

           conn.setAutoCommit(false);

            fis = (FileInputStream) second;

            ps = conn.prepareStatement(INSERT_PICTURE);
            ps.setString(1, "15");
            ps.setString(2, first);
            ps.setBinaryStream(3,fis,third);
            ps.executeUpdate();
            conn.commit();

        System.out.println("Таблица заполнена");
    }

    // --------Закрытие--------
    public static void CloseDB() throws ClassNotFoundException, SQLException
    {
        conn.close();

        System.out.println("Соединения закрыты");
    }

}