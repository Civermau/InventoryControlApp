using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class UI
{
    public static void Manage()
    {
        //menu para iniciar sesion, hacer signup o cambiar la contraseña en caso de que el usuario lo quiera
        while (true)
        {
            WriteLine("1: Login ");
            WriteLine("2: Signup");
            WriteLine("3: Olvidé mi contraseña");
            string res = ReadLine()??"";
            Clear();
            switch (res)
            {
                case "1":
                WriteLine("Ingresa tu usuario:");
                string userName = ReadLine()??"";
                WriteLine("Ingresa tu contraseña:");
                string password = ReadLine()??"";
                var user=LogIn(userName,password) ;
                MenuSelected(user.usuarioEncontrado,user.typeOfUser);
                break;
                case "2":
                    SignUpEstudent();
                    break;
                case "3":
                    ForgotPassword();
                    break;
                case "4":
                    return;
                default:
                    Console.WriteLine("Opción no válida, intentelo de nuevo");
                    break;
            }
        }
    }

    static UI()
    {
    }
}