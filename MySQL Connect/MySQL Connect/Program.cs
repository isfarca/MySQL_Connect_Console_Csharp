using System;
using MySql.Data.MySqlClient;

namespace MySQL_Connect
{
    class Program
    {
        static void Main(string[] args)
        {
            string Verbindungsinformationen = MySqlVerbindungsinformationen("localhost", "test", "root", "");
            MySqlConnection MySqlVerbindung = new MySqlConnection(Verbindungsinformationen);

            string Befehlstext = "SELECT H.Name AS Hersteller, S.Bezeichnung AS Konsole " +
                                 "FROM Spielkonsole S JOIN Hersteller H " +
                                 "ON S.HerstellerID = H.HerstellerID";
            MySqlCommand Befehl = null;
            MySqlDataReader Leser = null;

            try
            {
                MySqlVerbindung.Open();

                Befehl = new MySqlCommand(Befehlstext, MySqlVerbindung);
                Leser = Befehl.ExecuteReader();

                while (Leser.Read())
                    Console.Write("{0} {1}\n", Leser[0], Leser[1]);
            }
            catch (Exception Fehlermeldung)
            {
                Console.WriteLine(Fehlermeldung);
            }
            Console.ReadKey();

            try
            {
                MySqlVerbindung.Close();
            }
            catch (Exception Fehlermeldung)
            {
                Console.WriteLine(Fehlermeldung);
                Console.ReadKey();
            }
        }

        public static string MySqlVerbindungsinformationen(string Server, string Datenbank, string Benutzer, string Passwort)
        {
            string Verbindungsinformationen = "server=" + Server + ";database=" + Datenbank + ";uid=" + Benutzer + ";password=" + Passwort + ";";

            return Verbindungsinformationen;
        }
    }
}
