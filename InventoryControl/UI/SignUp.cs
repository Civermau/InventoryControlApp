using System;
using Microsoft.EntityFrameworkCore.Migrations.Operations;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class UI
{
    public static void SignUp()
    {
        int Registro;
        string? Nombre;
        string? ApellidoPaterno;
        string? ApellidoMaterno;
        int plantel;
        int Semestre;
        int Grupo;
        string? Correo;
        string? Contrasena;
        do
        {
            WriteLine("Ingresa tu registro");
        } while (int.TryParse(ReadLine(), out Registro) == false || RegisterValidation(Registro) != 01);

        do
        {
            WriteLine("Ingresa tu/s Nombre/s");
            Nombre = ReadLine();
        } while (NameValidation(Nombre) == false);

        WriteLine("Ingresa tu Apellido Paterno");

        do
        {
            ApellidoPaterno = ReadLine();
        } while (NameValidation(ApellidoPaterno) == false);

        WriteLine("Ingresa tu Apellido Materno");
        do
        {
            ApellidoMaterno = ReadLine();
        } while (NameValidation(ApellidoMaterno) == false);

        string newUsername = GenerateUsername(Nombre, ApellidoPaterno, ApellidoMaterno);


        do
        {
            WriteLine("Plantel: ");
            WriteLine("1. Colomos");
            WriteLine("2. Tonalá");
            WriteLine("3. Río Santiago");
            if (!int.TryParse(ReadLine(), out plantel))
            {
                WriteLine("Opción invalida");
            }
        } while (plantel < 1 || plantel > 3);


        do
        {
            WriteLine("Ingresa tu Semestre");
        } while (int.TryParse(ReadLine(), out Semestre) == false || Semestre < 1 || Semestre > 8);

        do
        {
            WriteLine("Ingresa tu Grupo");
        } while (int.TryParse(ReadLine(), out Grupo) == false || Grupo < 1 || Grupo > 26);

        do
        {
            WriteLine("Ingesa tu correo");
            Correo = ReadLine();
        } while (StudentEmailValidation(Correo, Registro) != 01);

        do
        {
            WriteLine("Ingresa tu contraseña");
            Contrasena = ReadLine();
        } while (PasswordValidation(Contrasena) != 01);

        AddStudent(Registro, newUsername, Nombre, ApellidoPaterno, ApellidoMaterno, plantel, Semestre, Grupo, Correo, Contrasena);
    }

    public static void AddStudent(int Registro, string newUsername, string? Nombre, string? ApellidoPaterno, string? ApellidoMaterno, int plantel, int Semestre, int Grupo, string? Correo, string? Contrasena)
    {
        using (Almacen db = new Almacen())
        {
            var CheckStudent = db.Estudiantes.FirstOrDefault(r => r.EstudianteId == Registro || r.Correo == Correo);
            if (CheckStudent != null)
            {
                WriteLine("Datos de usuario ya existentes");
                return;
            }
            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int UserID = lastUserId.HasValue ? lastUserId.Value + 1 : 1;

            var usuario = new Usuario()
            {
                UsuarioId = UserID,
                Usuario1 = newUsername,
                Password = Contrasena,
            };

            var estudiante = new Estudiante()
            {
                EstudianteId = Registro,
                Nombre = Nombre,
                ApellidoPaterno = ApellidoPaterno,
                ApellidoMaterno = ApellidoMaterno,
                PlantelId = plantel,
                SemestreId = Semestre,
                GrupoId = Grupo,
                Correo = Correo,
                UsuarioId = UserID,
            };

            Clear();
            db.Usuarios.Add(usuario);
            db.Estudiantes.Add(estudiante);
            db.SaveChanges();

        }
    }

    public static void SignUpDocente()
    {
        string nombre;
        string ApellidoPaterno;
        string ApellidoMaterno;
        string correo;
        int plantel;
        string password;
        int validacionPassword;
        string newUsername;

        do
        {
            Console.Write("Nombre: ");
            nombre = Console.ReadLine();
        } while (!NameValidation(nombre));

        do
        {
            Console.Write("Apellido Paterno: ");
            ApellidoPaterno = Console.ReadLine();
        } while (!NameValidation(ApellidoPaterno));

        do
        {
            Console.Write("Apellido Materno: ");
            ApellidoMaterno = Console.ReadLine();
        } while (!NameValidation(ApellidoMaterno));

        newUsername = GenerateUsername(nombre, ApellidoPaterno, ApellidoMaterno);

        do
        {
            Console.Write("Correo: ");
            correo = Console.ReadLine();
        } while (!EmailValidation(correo));
        
        do
        {
            Console.WriteLine("Plantel: ");
            Console.WriteLine("1. Colomos");
            Console.WriteLine("2. Tonalá");
            Console.WriteLine("3. Río Santiago");
            if (!int.TryParse(Console.ReadLine(), out plantel))
            {
                Console.WriteLine("Opción invalida");
            }
            else
            {
                plantel = int.Parse(Console.ReadLine());
            }

        } while (plantel < 1 || plantel > 3);

        do
        {
            Console.Write("Contraseña: ");
            password = Console.ReadLine();
            validacionPassword = PasswordValidation(password);
        } while (validacionPassword != 01);

        AddTeacher(newUsername, nombre, ApellidoPaterno, ApellidoMaterno, plantel, correo, password);
    }

    public static void AddTeacher(string newUsername, string? nombre, string? ApellidoPaterno, string? ApellidoMaterno, int plantel, string? correo, string? password)
    {
        using (Almacen db = new Almacen())
        {
            var CheckTeacher = db.Docentes.FirstOrDefault(r => r.Correo == correo);
            if (CheckTeacher != null)
            {
                WriteLine("Datos de usuario ya existentes");
                return;
            }
            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int newId = lastUserId.HasValue ? lastUserId.Value + 1 : 1;

            Usuario newUser = new Usuario
            {
                UsuarioId = newId,
                Usuario1 = newUsername,
                Password = password
            };

            int? lastDocenteId = db.Docentes.OrderByDescending(d => d.DocenteId).Select(d => d.DocenteId).FirstOrDefault();
            int newDocenteId = lastDocenteId.HasValue ? lastDocenteId.Value + 1 : 1;

            Docente newDocente = new Docente
            {
                DocenteId = newDocenteId,
                Nombre = nombre,
                ApellidoPaterno = ApellidoPaterno,
                ApellidoMaterno = ApellidoMaterno,
                Correo = correo,
                PlantelId = plantel,
                UsuarioId = newId
            };

            db.Usuarios.Add(newUser);
            db.Docentes.Add(newDocente);
            db.SaveChanges();
        }
    }

    public static void SignUpAlmacenista()
    {
            string nombre;
            string ApellidoPaterno;
            string ApellidoMaterno;
            string correo;
            int plantel;
            string password;
            int validacionPassword;
            string newUsername;

            do
            {
                Console.Write("Nombre: ");
                nombre = Console.ReadLine();
            } while (!NameValidation(nombre));

            do
            {
                Console.Write("Apellido Paterno: ");
                ApellidoPaterno = Console.ReadLine();
            } while (!NameValidation(ApellidoPaterno));

            do
            {
                Console.Write("Apellido Materno: ");
                ApellidoMaterno = Console.ReadLine();
            } while (!NameValidation(ApellidoMaterno));

            newUsername = GenerateUsername(nombre, ApellidoPaterno, ApellidoMaterno);

            do
            {
                Console.Write("Correo: ");
                correo = Console.ReadLine();
            } while (!EmailValidation(correo));

            do
            {
                Console.WriteLine("Plantel: ");
                Console.WriteLine("1. Colomos");
                Console.WriteLine("2. Tonalá");
                Console.WriteLine("3. Río Santiago");
                if (!int.TryParse(Console.ReadLine(), out plantel))
                {
                    Console.WriteLine("Opción invalida");
                }
                else
                {
                    plantel = int.Parse(Console.ReadLine());
                }

            } while (plantel < 1 || plantel > 3);

            do
            {
                Console.Write("Contraseña: ");
                password = Console.ReadLine();
                validacionPassword = PasswordValidation(password);
            } while (validacionPassword != 01);

            AddTeacher(newUsername, nombre, ApellidoPaterno, ApellidoMaterno, plantel, correo, password);
    }

    public static void AddWarehouseManager(string newUsername, string? nombre, string? ApellidoPaterno, string? ApellidoMaterno, int plantel, string? correo, string? password)
    {
        using (Almacen db = new Almacen())
        {
            var CheckWarehouseManager = db.Almacenistas.FirstOrDefault(r => r.Correo == correo);
            if (CheckWarehouseManager != null)
            {
                WriteLine("Datos de usuario ya existentes");
                return;
            }
            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int newId = lastUserId.HasValue ? lastUserId.Value + 1 : 1;

            Usuario newUser = new Usuario
            {
                UsuarioId = newId,
                Usuario1 = newUsername,
                Password = password
            };

            int? lastAlmacenistaId = db.Almacenistas.OrderByDescending(a => a.AlmacenistaId).Select(a => a.AlmacenistaId).FirstOrDefault();
            int newAlmacenistaId = lastAlmacenistaId.HasValue ? lastAlmacenistaId.Value + 1 : 1;

            Almacenista newAlmacenista = new Almacenista
            {
                AlmacenistaId = newAlmacenistaId,
                Nombre = nombre,
                ApellidoPaterno = ApellidoPaterno,
                ApellidoMaterno = ApellidoMaterno,
                Correo = correo,
                PlantelId = plantel,
                UsuarioId = newId
            };

            db.Usuarios.Add(newUser);
            db.Almacenistas.Add(newAlmacenista);
            db.SaveChanges();

        }
    }
}